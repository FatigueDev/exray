defmodule Exray.MixProject do
  use Mix.Project

  def project do
    [
      app: :exray,
      compilers: Mix.compilers(),
      version: "0.6.0",
      elixir: "~> 1.17.3",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      docs: docs(),
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
      {:unifex, "1.2.1"},
      {:typed_struct, "0.3.0"},
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
      files: ~w(c_src lib priv doc_extras bundlex.exs .formatter.exs mix.exs README.*),
      exclude_patterns:
        ~w(priv/bundlex lib/_examples #{Path.wildcard("c_src/**/_generated") |> Enum.join(" ")}),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/FatigueDev/exray"}
    ]
  end

  defp docs() do
    [
      main: "readme",
      source_ref: "master",
      extras: [
        "README.md",
        "doc_extras/guides/opening-a-window.md",
        "doc_extras/changelog.md",
        "doc_extras/completed-modules.md"
      ],
      groups_for_extras: [
        "Changelogs/Completion": ["doc_extras/changelog.md", "doc_extras/completed-modules.md"],
        "Getting Started": "README.md",
        Guides: ~r"doc_extras/guides/.*\.md$"
      ],
      groups_for_modules: [
        Utils: [
          ~r/Exray.Utils.*/
        ],
        Core: [
          ~r/Exray.Core.*/
        ],
        Shapes: [
          ~r/Exray.Shapes.*/
        ],
        Text: [
          ~r/Exray.Text.*/
        ],
        Textures: [
          ~r/Exray.Textures.*/
        ],
        Structs: [
          ~r/Exray.Structs.*/
        ]
      ]
    ]
  end
end
