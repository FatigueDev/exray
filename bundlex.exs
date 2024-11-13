defmodule Exray.BundlexProject do
  use Bundlex.Project

  @includes ["./c_src/exray/"]
  @lib_dirs @includes
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
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ]
    ],
    core_window: [
      sources: ["./core/core_window.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_cursor: [
      sources: ["./core/core_cursor.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_screenspace: [
      sources: ["./core/core_screenspace.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_timing: [
      sources: ["./core/core_timing.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_drawing: [
      sources: ["./core/core_drawing.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_input_keyboard: [
      sources: ["./core/core_input_keyboard.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    core_input_mouse: [
      sources: ["./core/core_input_mouse.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    shapes_basic: [
      sources: ["./shapes/shapes_basic.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    shapes_collision: [
      sources: ["./shapes/shapes_collision.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, @blob}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ],
    shapes_spline: [
      sources: ["./shapes/shapes_spline.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      lib_dirs: @lib_dirs,
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
