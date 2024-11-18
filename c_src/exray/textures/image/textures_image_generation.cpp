#include "../../exray.cpp"
#include "textures_image_generation.h"
#include "../../type_converter.cpp"

// # Image GenImageColor(int width, int height, Color color);                                           // Generate image: plain color
UNIFEX_TERM gen_image_color(UnifexEnv *env, int width, int height, exColor color) {
    return gen_image_color_result(env, ToExImage(env, GenImageColor(width, height, ToColor(color))));
}

// # Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end);        // Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
UNIFEX_TERM gen_image_gradient_linear(UnifexEnv *env, int width, int height, int direction, exColor start, exColor finish) {
    return gen_image_gradient_linear_result(env, ToExImage(env, GenImageGradientLinear(width, height, direction, ToColor(start), ToColor(finish))));
}

// # Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);      // Generate image: radial gradient
UNIFEX_TERM gen_image_gradient_radial(UnifexEnv *env, int width, int height, double density, exColor inner, exColor outer) {
    return gen_image_gradient_radial_result(env, ToExImage(env, GenImageGradientRadial(width, height, density, ToColor(inner), ToColor(outer))));
}

// # Image GenImageGradientSquare(int width, int height, float density, Color inner, Color outer);      // Generate image: square gradient
UNIFEX_TERM gen_image_gradient_square(UnifexEnv *env, int width, int height, double density, exColor inner, exColor outer) {
    return gen_image_gradient_square_result(env, ToExImage(env, GenImageGradientSquare(width, height, density, ToColor(inner), ToColor(outer))));
}

// # Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);    // Generate image: checked
UNIFEX_TERM gen_image_checked(UnifexEnv *env, int width, int height, int checks_x, int checks_y, exColor col1, exColor col2) {
    return gen_image_checked_result(env, ToExImage(env, GenImageChecked(width, height, checks_x, checks_y, ToColor(col1), ToColor(col2))));
}

// # Image GenImageWhiteNoise(int width, int height, float factor);                                     // Generate image: white noise
UNIFEX_TERM gen_image_white_noise(UnifexEnv *env, int width, int height, double factor) {
    return gen_image_white_noise_result(env, ToExImage(env, GenImageWhiteNoise(width, height, factor)));
}

// # Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);           // Generate image: perlin noise
UNIFEX_TERM gen_image_perlin_noise(UnifexEnv *env, int width, int height, int offset_x, int offset_y, double scale) {
    return gen_image_perlin_noise_result(env, ToExImage(env, GenImagePerlinNoise(width, height, offset_x, offset_y, scale)));
}

// # Image GenImageCellular(int width, int height, int tileSize);                                       // Generate image: cellular algorithm, bigger tileSize means bigger cells
UNIFEX_TERM gen_image_cellular(UnifexEnv *env, int width, int height, int tile_size) {
    return gen_image_cellular_result(env, ToExImage(env, GenImageCellular(width, height, tile_size)));
}

// # Image GenImageText(int width, int height, const char *text);                                       // Generate image: grayscale image from text data
UNIFEX_TERM gen_image_text(UnifexEnv *env, int width, int height, char *text) {
    return gen_image_text_result(env, ToExImage(env, GenImageText(width, height, text)));
}