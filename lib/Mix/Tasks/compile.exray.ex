defmodule Mix.Tasks.Compile.Exray do
  @moduledoc "Compile the Native Implemented Functions for Exray"
  use Mix.Task

  alias Unifex.InterfaceIO
  alias Unifex.Specs
  alias Unifex.CodeGenerator

  alias Bundlex.Helper.MixHelper
  alias Bundlex.Platform
  alias Bundlex.Project
  alias Bundlex.Output
  alias Bundlex.Native
  alias Bundlex.BuildScript

  @shortdoc "Compile Unifex natives, Bundlex natives and Exray; generating Raylib bindings"
  @impl Mix.Task
  def run(_args) do
    {:ok, exray_root} = Bundlex.Helper.MixHelper.get_project_dir(:exray)

    {:ok, _apps} = Application.ensure_all_started(:exray)
    {:ok, _apps} = Application.ensure_all_started(:unifex)
    {:ok, _apps} = Application.ensure_all_started(:bundlex)

    IO.puts("Compiling Unifex for Exray...")
    compile_unifex(exray_root)
    IO.puts("Compiling Bundlex for Exray...")
    compile_bundlex()
    :ok
  end

  # Shamelessly copy pasting the compile.unifex code because they discard `args`, which they should use to select path
  defp compile_unifex(exray_root) do
    exray_root
    |> InterfaceIO.get_interfaces_specs!()
    |> Enum.each(fn {name, dir, specs_file} ->
      codes = specs_file |> Specs.parse(name) |> CodeGenerator.generate_code()
      Enum.each(codes, &InterfaceIO.store_interface!(name, dir, &1))
      generators = Enum.map(codes, fn {_header, _source, generator} -> generator end)
      tie_header = CodeGenerator.TieHeader.generate_header(name, generators)
      InterfaceIO.store_tie_header!(name, dir, tie_header)
      InterfaceIO.store_gitignore!(dir)
    end)
  end

  # Shamelessly copy pasting the compile.bundlex code because they discard `args`, which they should use to select app
  defp compile_bundlex() do
    commands = []

    app = MixHelper.get_app!(:exray)
    platform = Platform.get_target!()

    project =
      with({:ok, project} <- Project.get(:exray)) do
        project
      else
        {:error, reason} ->
          Bundlex.Output.raise(
            "Cannot get project for app: #{inspect(app)}, reason: #{inspect(reason)}"
          )
      end

    commands =
      commands ++ Platform.get_module(platform).toolchain_module().before_all!(platform)

    commands =
      commands ++
        case Native.resolve_natives(project, platform) do
          {:ok, nifs_commands} ->
            nifs_commands

          {:error, {app, reason}} ->
            Output.raise(
              "Error resolving natives for app #{inspect(app)}, reason: #{inspect(reason)}"
            )
        end

    build_script = BuildScript.new(commands)

    {cmdline_options, _argv, _errors} =
      OptionParser.parse(System.argv(), switches: [store_scripts: :boolean])

    if cmdline_options[:store_scripts] do
      {:ok, {filename, _script}} = build_script |> BuildScript.store(platform)
      Output.info("Stored build script at #{File.cwd!() |> Path.join(filename)}")
    end

    case build_script |> BuildScript.run(platform) do
      :ok ->
        :ok

      {:error, {:run_build_script, return_code: ret, command: cmd}} ->
        Output.raise("""
        Failed to build the native part of package #{app}. Errors may have been logged above.
        Make sure that all required packages are properly installed in your system.
        Requirements and installation guide may be found in the readme of package #{app}.

        Returned code: #{ret}
        Build script:

        #{cmd}
        """)

      {:error, reason} ->
        Output.raise("Error running build script, reason #{inspect(reason)}")
    end

    {:ok, []}
  end
end
