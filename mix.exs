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
      files: ~w(c_src lib priv bundlex.exs .formatter.exs mix.exs README.*),
      exclude_patterns: ~w(priv/bundlex c_src/exray/_generated c_src/exray/core/_generated c_src/exray/shapes/_generated),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/FatigueDev/exray"}
    ]
  end

  defp docs() do
    [
      main: "readme",
      source_ref: "master",
      extras: ["README.md", "guides/opening-a-window.md"],
      groups_for_extras: [
        "Getting Started": "README.md",
        "Guides": ~r"guides/.*\.md$"
      ],
      groups_for_modules: [
        "Core": [
          Exray.Core.Cursor,
          Exray.Core.Drawing,
          Exray.Core.Input.Keyboard,
          Exray.Core.Timing,
          Exray.Core.Window
        ],
        "Shapes": [
          Exray.Shapes.Basic,
          Exray.Shapes.Collision
        ],
        "Structs": [
          Exray.Structs.AutomationEvent,
          Exray.Structs.AutomationEventList,
          Exray.Structs.BoneInfo,
          Exray.Structs.BoundingBox,
          Exray.Structs.Camera2D,
          Exray.Structs.Camera3D,
          Exray.Structs.Color,
          Exray.Structs.FilePathList,
          Exray.Structs.Font,
          Exray.Structs.GlyphInfo,
          Exray.Structs.Image,
          Exray.Structs.Material,
          Exray.Structs.MaterialMap,
          Exray.Structs.Matrix,
          Exray.Structs.Mesh,
          Exray.Structs.Model,
          Exray.Structs.ModelAnimation,
          Exray.Structs.NPatchInfo,
          Exray.Structs.Ray,
          Exray.Structs.RayCollision,
          Exray.Structs.Rectangle,
          Exray.Structs.RenderTexture,
          Exray.Structs.Shader,
          Exray.Structs.Texture,
          Exray.Structs.Transform,
          Exray.Structs.Vector2,
          Exray.Structs.Vector3,
          Exray.Structs.Vector4,
          Exray.Structs.VrDeviceInfo,
          Exray.Structs.VrStereoConfig
        ]
      ]
    ]
  end

end
