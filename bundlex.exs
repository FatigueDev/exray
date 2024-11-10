defmodule Exray.BundlexProject do
  use Bundlex.Project

  @includes ["./c_src/exray/"]

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
        raylib: [{:precompiled, "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"}]
      ]
    ],
    core_window: [
      sources: ["core_window.cpp"],
      interface: [:nif, :cnode],
      includes: @includes,
      preprocessor: Unifex,
      language: :cpp,
      os_deps: [
        raylib: [{:precompiled, "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"}]
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
        raylib: [{:precompiled, "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"}]
      ],
      compiler_flags: ["-Wno-narrowing"]
    ]
  ]
  end
end
