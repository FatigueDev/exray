defmodule Exray.BundlexProject do
  use Bundlex.Project

  @includes ["./c_src/exray/"]
  @blob "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"

  def project() do
  [
    natives: natives(Bundlex.get_target())
  ]
  end

  def natives(_platform) do
  [
    exray: [
      sources: ["exray.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ]
    ],
    core_window: [
      sources: ["core_window.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_cursor: [
      sources: ["core_cursor.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_timing: [
      sources: ["core_timing.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_drawing: [
      sources: ["core_drawing.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_input_keyboard: [
      sources: ["core_input_keyboard.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    shapes_basic: [
      sources: ["shapes_basic.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    shapes_collision: [
      sources: ["shapes_collision.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ]
  ]
  end
end
