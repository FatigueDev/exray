defmodule Exray.MixProject do
  use Mix.Project

  def project do
    [
      app: :exray,
      compilers: Mix.compilers ++ [:unifex, :bundlex],
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Exray",
      source_url: "https://github.com/FatigueDev/exray",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:unifex, "~> 1.2.0"},
      {:typed_struct, "~> 0.3.0"},
      {:credo, "~> 1.7.7", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Raylib bindings for Elixir. Don't use it yet, heavily WIP."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "exray",
      # These are the default files included in the package
      files: ~w(c_src lib priv bundlex.exs .formatter.exs mix.exs README.md),
      exclude_patterns: ~w(priv/bundlex c_src/exray/_generated c_src/exray/core/_generated c_src/exray/shapes/_generated),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/FatigueDev/exray"}
    ]
  end

end
