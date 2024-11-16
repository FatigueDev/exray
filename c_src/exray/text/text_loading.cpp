#include "../exray.cpp"
#include "text_loading.h"
#include "../type_converter.cpp"

UNIFEX_TERM get_font_default(UnifexEnv *env){
    return get_font_default_result(env, ToExFont(env, GetFontDefault()));
}

UNIFEX_TERM load_font(UnifexEnv *env, char *file_name){
    return load_font_result(env, ToExFont(env, LoadFont(file_name)));
}

UNIFEX_TERM load_font_ex(UnifexEnv *env, char *file_name, int font_size, int *codepoints, unsigned int codepoints_length){
    return load_font_ex_result(env, ToExFont(env, LoadFontEx((const char*)file_name, font_size, codepoints, codepoints_length)));
}

UNIFEX_TERM load_font_from_image(UnifexEnv *env, exImage image, exColor color_key, int first_char){
    Color color = ToColor(color_key);
    Image img = ToImage(image);
    Font font = LoadFontFromImage(img, color, first_char);
    exFont exFont = ToExFont(env, font);
    return load_font_from_image_result(env, exFont);
}

UNIFEX_TERM load_font_from_memory(UnifexEnv *env, char *file_type, char *file_data, int data_size, int font_size, int *codepoints, unsigned int codepoints_length){
    return load_font_from_memory_result(env, ToExFont(env, LoadFontFromMemory((const char*)file_type, (const unsigned char*)file_data, data_size, font_size, codepoints, codepoints_length)));
}

UNIFEX_TERM font_is_ready(UnifexEnv *env, exFont font){
    return font_is_ready_result(env, IsFontReady(ToFont(font)));
}

UNIFEX_TERM load_font_data(UnifexEnv *env, char *file_data, int data_size, int font_size, int *codepoints, unsigned int codepoints_length, int type){
        return load_font_data_result(env, ToExGlyphInfoPtr(env, LoadFontData((const unsigned char*)file_data, data_size, font_size, codepoints, codepoints_length, type), data_size), data_size);
}

UNIFEX_TERM gen_image_font_atlas(
    UnifexEnv *env, exGlyphInfo *glyphs, unsigned int glyphs_length,
    exRectangle *glyph_recs, unsigned int glyph_recs_length,
    int font_size, int padding, int pack_method)
{
    return gen_image_font_atlas_result(env, ToExImage(env, GenImageFontAtlas(ToGlyphInfoPtr(glyphs, glyphs_length), (Rectangle**)ToRectanglePtr(glyph_recs, glyph_recs_length), glyphs_length, font_size, padding, pack_method)));
}

UNIFEX_TERM unload_font_data(UnifexEnv *env, exGlyphInfo *glyphs, unsigned int glyphs_length){
    UnloadFontData(ToGlyphInfoPtr(glyphs, glyphs_length), glyphs_length);
    return unload_font_data_result(env);
}

UNIFEX_TERM unload_font(UnifexEnv *env, exFont font){
    UnloadFont(ToFont(font));
    return unload_font_result(env);
}

UNIFEX_TERM export_font_as_code(UnifexEnv *env, exFont font, char *file_name){
    return export_font_as_code_result(env, ExportFontAsCode(ToFont(font), (const char*)file_name));
}