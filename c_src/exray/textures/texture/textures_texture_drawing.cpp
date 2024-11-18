#include "../../exray.cpp"
#include "textures_texture_drawing.h"
#include "../../type_converter.cpp"

// # void DrawTexture(Texture2D texture, int posX, int posY, Color tint);                               // Draw a Texture2D
UNIFEX_TERM draw_texture(UnifexEnv *env, exTexture texture, int pos_x, int pos_y, exColor tint) {
    DrawTexture(ToTexture(texture), pos_x, pos_y, ToColor(tint));
    return draw_texture_result(env);
}

// # void DrawTextureV(Texture2D texture, Vector2 position, Color tint);                                // Draw a Texture2D with position defined as Vector2
UNIFEX_TERM draw_texture_v(UnifexEnv *env, exTexture texture, exVector2 position, exColor tint) {
    DrawTextureV(ToTexture(texture), ToVector2(position), ToColor(tint));
    return draw_texture_v_result(env);
}

// # void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);  // Draw a Texture2D with extended parameters
UNIFEX_TERM draw_texture_ex(UnifexEnv *env, exTexture texture, exVector2 position, double rotation, double scale, exColor tint) {
    DrawTextureEx(ToTexture(texture), ToVector2(position), rotation, scale, ToColor(tint));
    return draw_texture_ex_result(env);
}

// # void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);            // Draw a part of a texture defined by a rectangle
UNIFEX_TERM draw_texture_rec(UnifexEnv *env, exTexture texture, exRectangle source, exVector2 position, exColor tint) {
    DrawTextureRec(ToTexture(texture), ToRectangle(source), ToVector2(position), ToColor(tint));
    return draw_texture_rec_result(env);
}

// # void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint); // Draw a part of a texture defined by a rectangle with 'pro' parameters
UNIFEX_TERM draw_texture_pro(UnifexEnv *env, exTexture texture, exRectangle source, exRectangle dest, exVector2 origin, double rotation, exColor tint) {
    DrawTexturePro(ToTexture(texture), ToRectangle(source), ToRectangle(dest), ToVector2(origin), rotation, ToColor(tint));
    return draw_texture_pro_result(env);
}

// # void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint); // Draws a texture (or part of it) that stretches or shrinks nicely
UNIFEX_TERM draw_texture_n_patch(UnifexEnv *env, exTexture texture, exNPatchInfo n_patch_info, exRectangle dest, exVector2 origin, double rotation, exColor tint) {
    DrawTextureNPatch(ToTexture(texture), ToNPatchInfo(n_patch_info), ToRectangle(dest), ToVector2(origin), rotation, ToColor(tint));
    return draw_texture_n_patch_result(env);
}