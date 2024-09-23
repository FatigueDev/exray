defmodule Exray.BundlexProject do
  use Bundlex.Project

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
      preprocessor: Unifex,
      language: :cpp,
      # os_deps: [
      #   {:pkg_config, "libpng"}, # deprecated syntax, testing for regression
      #   ffmpeg: get_ffmpeg(),
      # ]
      os_deps: [
        raylib: [{:precompiled, "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_linux_amd64.tar.gz"}]
      ]
    ]
  ]
  end
end
