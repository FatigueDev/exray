defmodule Exray.BundlexProject do
  use Bundlex.Project

  @includes ["./c_src/exray/"]
  @lib_dirs @includes
  @blob "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"
  @lib_name "libraylib"
  @compiler_flags [
    "-Wno-narrowing",
    "-s",
    "-O2"
  ]
  @os_deps [
    raylib: [{:precompiled, @blob, @lib_name}]
  ]

  def project() do
    [
      natives: natives(Bundlex.get_target())
    ]
  end

  def natives(_platform) do
    [
      # -- Shared --
      exray: [
        sources: ["exray.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],

      # -- Core --
      core_cursor: [
        sources: ["./core/core_cursor.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_drawing: [
        sources: ["./core/core_drawing.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_framecontrol: [
        sources: ["./core/core_framecontrol.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_input_keyboard: [
        sources: ["./core/core_input_keyboard.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_input_mouse: [
        sources: ["./core/core_input_mouse.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_misc: [
        sources: ["./core/core_misc.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_random: [
        sources: ["./core/core_random.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_screenspace: [
        sources: ["./core/core_screenspace.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_timing: [
        sources: ["./core/core_timing.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      core_window: [
        sources: ["./core/core_window.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],

      # -- Shapes --
      shapes_basic: [
        sources: ["./shapes/shapes_basic.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      shapes_collision: [
        sources: ["./shapes/shapes_collision.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      shapes_spline: [
        sources: ["./shapes/shapes_spline.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],

      # -- Text --
      text_loading: [
        sources: ["./text/text_loading.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],
      text_drawing: [
        sources: ["./text/text_drawing.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ],

      # -- Textures --
      textures_image: [
        sources: ["./textures/textures_image.cpp"],
        interface: [:nif, :cnode],
        includes: @includes,
        lib_dirs: @lib_dirs,
        preprocessor: Unifex,
        language: :cpp,
        os_deps: @os_deps,
        compiler_flags: @compiler_flags
      ]
    ]
  end
end
