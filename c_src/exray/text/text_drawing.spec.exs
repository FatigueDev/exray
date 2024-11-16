module Exray.Text.Drawing.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# void DrawFPS(int posX, int posY);                                                     // Draw current FPS
spec draw_fps(pos_x :: int, pos_y :: int) :: :ok

# void DrawText(const char *text, int posX, int posY, int fontSize, Color color);       // Draw text (using default font)
spec draw_text(text :: string, pos_x :: int, pos_y :: int, font_size :: int, color :: exColor) :: :ok

# void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text using font and additional parameters
spec draw_text_ex(font :: exFont, text :: string, position :: exVector2, font_size :: float, spacing :: float, tint :: exColor) :: :ok

# void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); // Draw text using Font and pro parameters (rotation)
spec draw_text_pro(font :: exFont, text :: string, position :: exVector2, origin :: exVector2, rotation :: float, font_size :: float, spacing :: float, tint :: exColor) :: :ok

# void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint); // Draw one character (codepoint)
spec draw_text_codepoint(font :: exFont, codepoint :: int, position :: exVector2, font_size :: float, tint :: exColor) :: :ok

# void DrawTextCodepoints(Font font, const int *codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint); // Draw multiple character (codepoint)
spec draw_text_codepoints(font :: exFont, codepoints :: [int], position :: exVector2, font_size :: float, spacing :: float, tint :: exColor) :: :ok
