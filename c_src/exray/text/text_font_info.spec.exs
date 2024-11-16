module Exray.Text.FontInfo.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# // Text font info functions
# void SetTextLineSpacing(int spacing);                                                 // Set vertical line spacing when drawing with line-breaks
# int MeasureText(const char *text, int fontSize);                                      // Measure string width for default font
# Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);    // Measure string size for Font
# int GetGlyphIndex(Font font, int codepoint);                                          // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
# GlyphInfo GetGlyphInfo(Font font, int codepoint);                                     // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
# Rectangle GetGlyphAtlasRec(Font font, int codepoint);                                 // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
