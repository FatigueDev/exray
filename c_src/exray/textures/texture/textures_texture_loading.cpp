#include "../../exray.cpp"
#include "textures_texture_loading.h"
#include "../../type_converter.cpp"

// # Texture2D LoadTexture(const char *fileName);                                                       // Load texture from file into GPU memory (VRAM)
UNIFEX_TERM load_texture(UnifexEnv *env, char *file_name) {
    return load_texture_result(env, ToExTexture(LoadTexture(file_name)));
} //:: texture :: exTexture

// # Texture2D LoadTextureFromImage(Image image);                                                       // Load texture from image data
UNIFEX_TERM load_texture_from_image(UnifexEnv *env, exImage image) {
    return load_texture_from_image_result(env, ToExTexture(LoadTextureFromImage(ToImage(image))));
} //:: texture :: exTexture

// # TextureCubemap LoadTextureCubemap(Image image, int layout);                                        // Load cubemap from image, multiple image cubemap layouts supported
UNIFEX_TERM load_texture_cubemap(UnifexEnv *env, exImage image, int layout) {
    return load_texture_cubemap_result(env, ToExTexture(LoadTextureCubemap(ToImage(image), layout)));
} //:: texture :: exTexture

// # RenderTexture2D LoadRenderTexture(int width, int height);                                          // Load texture for rendering (framebuffer)
UNIFEX_TERM load_render_texture(UnifexEnv *env, int width, int height) {
    return load_render_texture_result(env, ToExRenderTexture(LoadRenderTexture(width, height)));
} //:: texture :: exTexture

// # bool IsTextureValid(Texture2D texture);                                                            // Check if a texture is valid (loaded in GPU)
UNIFEX_TERM texture_is_ready(UnifexEnv *env, exTexture texture) {
    return texture_is_ready_result(env, IsTextureReady(ToTexture(texture)));
} //:: is_valid :: bool

// # void UnloadTexture(Texture2D texture);                                                             // Unload texture from GPU memory (VRAM)
UNIFEX_TERM unload_texture(UnifexEnv *env, exTexture texture) {
    UnloadTexture(ToTexture(texture));
    return unload_texture_result(env);
} //:: :ok

// # bool IsRenderTextureValid(RenderTexture2D target);                                                 // Check if a render texture is valid (loaded in GPU)
UNIFEX_TERM render_texture_is_ready(UnifexEnv *env, exRenderTexture target) {
    return render_texture_is_ready_result(env, IsRenderTextureReady(ToRenderTexture(target)));
} //:: is_valid :: bool

// # void UnloadRenderTexture(RenderTexture2D target);                                                  // Unload render texture from GPU memory (VRAM)
UNIFEX_TERM unload_render_texture(UnifexEnv *env, exRenderTexture target) {
    UnloadRenderTexture(ToRenderTexture(target));
    return unload_render_texture_result(env);
} //:: :ok

// # void UpdateTexture(Texture2D texture, const void *pixels);                                         // Update GPU texture with new data
// UNIFEX_TERM update_texture(UnifexEnv *env, exTexture texture, UnifexState *state) {
//     return update_texture_result(env, ToExTexture());
// } //:: :ok

// # void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);                       // Update GPU texture rectangle with new data
// UNIFEX_TERM update_texture_rec(UnifexEnv *env, exTexture texture, exRectangle rec, UnifexState *state) {
//     return update_texture_rec_result(env, ToExTexture());
// } //:: :ok