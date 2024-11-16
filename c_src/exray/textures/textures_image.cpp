#include "../exray.cpp"
#include "textures_image.h"
#include "../type_converter.cpp"

UNIFEX_TERM load_image(UnifexEnv *env, char *file_name){
    return load_image_result(env, ToExImage(env, LoadImage(file_name)));
}

UNIFEX_TERM load_texture_from_image(UnifexEnv *env, exImage image){
    return load_texture_from_image_result(env, ToExTexture((Texture)LoadTextureFromImage(ToImage(image))));
}

UNIFEX_TERM draw_texture(UnifexEnv *env, exTexture texture, int pos_x, int pos_y, exColor tint) {
    DrawTexture(ToTexture(texture), pos_x, pos_y, ToColor(tint));
    return draw_texture_result(env);
}