#include "../exray.cpp"
#include "text_drawing.h"
#include "../type_converter.cpp"

UNIFEX_TERM draw_fps(UnifexEnv *env, int pos_x, int pos_y) {
    DrawFPS(pos_x, pos_y);
    return draw_fps_result(env);
}

UNIFEX_TERM draw_text(UnifexEnv *env, char *text, int pos_x, int pos_y, int font_size, exColor color) {
    DrawText(text, pos_x, pos_y, font_size, ToColor(color));
    return draw_text_result(env);
}

UNIFEX_TERM draw_text_ex(UnifexEnv *env, exFont font, char *text, exVector2 position, double font_size, double spacing, exColor tint) {
    std::cout << "\n\n!DEBUG Entered draw_text_ex\n\n";
    DrawTextEx(ToFont(font), text, ToVector2(position), font_size, spacing, ToColor(tint));
    return draw_text_ex_result(env);
}

UNIFEX_TERM draw_text_pro(UnifexEnv *env, exFont font, char *text, exVector2 position, exVector2 origin, double rotation, double font_size, double spacing, exColor tint) {
    DrawTextPro(ToFont(font), text, ToVector2(position), ToVector2(origin), rotation, font_size, spacing, ToColor(tint));
    return draw_text_pro_result(env);
}

UNIFEX_TERM draw_text_codepoint(UnifexEnv *env, exFont font, int codepoint, exVector2 position, double font_size, exColor tint) {
    DrawTextCodepoint(ToFont(font), codepoint, ToVector2(position), font_size, ToColor(tint));
    return draw_text_codepoint_result(env);
}

UNIFEX_TERM draw_text_codepoints(UnifexEnv *env, exFont font, int *codepoints, unsigned int codepoints_length, exVector2 position, double font_size, double spacing, exColor tint) {
    DrawTextCodepoints(ToFont(font), codepoints, codepoints_length, ToVector2(position), font_size, spacing, ToColor(tint));
    return draw_text_codepoints_result(env);
}
