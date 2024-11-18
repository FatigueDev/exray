module(Exray.Textures.Image.Generation.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec(gen_image_color(width :: int, height :: int, color :: exColor) :: image :: exImage)

spec(
  gen_image_gradient_linear(
    width :: int,
    height :: int,
    direction :: int,
    start :: exColor,
    finish :: exColor
  ) :: image :: exImage
)

spec(
  gen_image_gradient_radial(
    width :: int,
    height :: int,
    density :: float,
    inner :: exColor,
    outer :: exColor
  ) :: image :: exImage
)

spec(
  gen_image_gradient_square(
    width :: int,
    height :: int,
    density :: float,
    inner :: exColor,
    outer :: exColor
  ) :: image :: exImage
)

spec(
  gen_image_checked(
    width :: int,
    height :: int,
    checks_x :: int,
    checks_y :: int,
    col1 :: exColor,
    col2 :: exColor
  ) :: image :: exImage
)

spec(gen_image_white_noise(width :: int, height :: int, factor :: float) :: image :: exImage)

spec(
  gen_image_perlin_noise(
    width :: int,
    height :: int,
    offset_x :: int,
    offset_y :: int,
    scale :: float
  ) :: image :: exImage
)

spec(gen_image_cellular(width :: int, height :: int, tile_size :: int) :: image :: exImage)
spec(gen_image_text(width :: int, height :: int, text :: string) :: image :: exImage)
