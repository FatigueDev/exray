module(Exray.Text.Loading.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec(get_font_default() :: font :: exFont)

spec(load_font(file_name :: string) :: font :: exFont)
spec(load_font_ex(file_name :: string, font_size :: int, codepoints :: [int]) :: font :: exFont)

spec(
  load_font_from_image(image :: exImage, color_key :: exColor, first_char :: int) ::
    font :: exFont
)

spec(
  load_font_from_memory(
    file_type :: string,
    file_data :: string,
    data_size :: int,
    font_size :: int,
    codepoints :: [int]
  ) :: font :: exFont
)

spec(font_is_ready(font :: exFont) :: font_is_ready :: bool)

spec(
  load_font_data(
    file_data :: string,
    data_size :: int,
    font_size :: int,
    codepoints :: [int],
    type :: int
  ) :: font_data :: [exGlyphInfo]
)

spec(
  gen_image_font_atlas(
    glyphs :: [exGlyphInfo],
    glyph_recs :: [exRectangle],
    font_size :: int,
    padding :: int,
    pack_method :: int
  ) :: image_font_atlas :: exImage
)

spec(unload_font_data(glyphs :: [exGlyphInfo]) :: :ok)
spec(unload_font(font :: exFont) :: :ok)

spec(export_font_as_code(font :: exFont, file_name :: string) :: success :: bool)
