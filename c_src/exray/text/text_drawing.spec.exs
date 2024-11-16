module(Exray.Text.Drawing.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec(draw_fps(pos_x :: int, pos_y :: int) :: :ok)

spec(
  draw_text(text :: string, pos_x :: int, pos_y :: int, font_size :: int, color :: exColor) :: :ok
)

spec(
  draw_text_ex(
    font :: exFont,
    text :: string,
    position :: exVector2,
    font_size :: float,
    spacing :: float,
    tint :: exColor
  ) :: :ok
)

spec(
  draw_text_pro(
    font :: exFont,
    text :: string,
    position :: exVector2,
    origin :: exVector2,
    rotation :: float,
    font_size :: float,
    spacing :: float,
    tint :: exColor
  ) :: :ok
)

spec(
  draw_text_codepoint(
    font :: exFont,
    codepoint :: int,
    position :: exVector2,
    font_size :: float,
    tint :: exColor
  ) :: :ok
)

spec(
  draw_text_codepoints(
    font :: exFont,
    codepoints :: [int],
    position :: exVector2,
    font_size :: float,
    spacing :: float,
    tint :: exColor
  ) :: :ok
)
