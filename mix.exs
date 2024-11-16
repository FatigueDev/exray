defmodule Exray.MixProject do
  use Mix.Project

  def project do
    [
      app: :exray,
      compilers: [:unifex, :bundlex] ++ Mix.compilers(),
      version: "0.4.0",
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
        Core: [
          Exray.Core.Cursor,
          Exray.Core.Drawing,
          Exray.Core.FrameControl,
          Exray.Core.Input.Keyboard,
          Exray.Core.Input.Mouse,
          Exray.Core.KeyCodes,
          Exray.Core.Misc,
          Exray.Core.Random,
          Exray.Core.Screenspace,
          Exray.Core.Timing,
          Exray.Core.Window
        ],
        Shapes: [
          Exray.Shapes.Basic,
          Exray.Shapes.Collision,
          Exray.Shapes.Spline
        ],
        Text: [
          Exray.Text.Drawing,
          Exray.Text.Loading
        ],
        Colors: [
          Exray.Colors
        ],
        Structs: [
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
