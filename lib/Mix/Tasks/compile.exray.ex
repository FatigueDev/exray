defmodule Mix.Tasks.Compile.Exray do
  @moduledoc "Compile the Native Implemented Functions for Exray"
  use Mix.Task

  @shortdoc "Compile Unifex, Bundlex and App; generating our NIF functions"
  def run(args) do
    Mix.Tasks.Compile.Unifex.run(args)
    Mix.Tasks.Compile.Bundlex.run(args)
  end
end
