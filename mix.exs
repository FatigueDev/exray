defmodule Exray.MixProject do
  use Mix.Project

  def project do
    [
      app: :exray,
      compilers: Mix.compilers ++ [:unifex, :bundlex],
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
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
      {:credo, "~> 1.7.7", only: [:dev, :test], runtime: false}
    ]
  end
end
