#include "exray.cpp"
#include "core_drawing.h"
#include "type_converter.cpp"

UNIFEX_TERM clear_background(UnifexEnv *env, exColor color){
    ClearBackground(ToColor(color));
    return clear_background_result_ok(env);
}

UNIFEX_TERM begin_drawing(UnifexEnv *env){
    BeginDrawing();
    return begin_drawing_result_ok(env);
}

UNIFEX_TERM end_drawing(UnifexEnv *env){
    EndDrawing();
    return end_drawing_result_ok(env);
}

// void BeginMode2D(Camera2D camera);                          // Begin 2D mode with custom camera (2D)
UNIFEX_TERM begin_mode_2d(UnifexEnv *env, exCamera2D camera){
    BeginMode2D(ToCamera2D(camera));
    return begin_mode_2d_result_ok(env);
}

// void EndMode2D(void);                                       // Ends 2D mode with custom camera
UNIFEX_TERM end_mode_2d(UnifexEnv *env){
    EndMode2D();
    return end_mode_2d_result_ok(env);
}

// void BeginMode3D(Camera3D camera);                          // Begin 3D mode with custom camera (3D)
UNIFEX_TERM begin_mode_3d(UnifexEnv *env, exCamera3D camera){
    BeginMode3D(ToCamera3D(camera));
    return begin_mode_3d_result_ok(env);
}

// void EndMode3D(void);                                       // Ends 3D mode and returns to default 2D orthographic mode
UNIFEX_TERM end_mode_3d(UnifexEnv *env){
    EndMode3D();
    return end_mode_3d_result_ok(env);
}

// void BeginTextureMode(RenderTexture2D target);              // Begin drawing to render texture
UNIFEX_TERM begin_texture_mode(UnifexEnv *env, exRenderTexture target){
    BeginTextureMode(ToRenderTexture(target));
    return begin_texture_mode_result_ok(env);
}

// void EndTextureMode(void);                                  // Ends drawing to render texture
UNIFEX_TERM end_texture_mode(UnifexEnv *env){
    EndTextureMode();
    return end_texture_mode_result_ok(env);
}

// void BeginShaderMode(Shader shader);                        // Begin custom shader drawing
UNIFEX_TERM begin_shader_mode(UnifexEnv *env, exShader shader){
    BeginShaderMode(ToShader(shader));
    return begin_shader_mode_result_ok(env);
}

// void EndShaderMode(void);                                   // End custom shader drawing (use default shader)
UNIFEX_TERM end_shader_mode(UnifexEnv *env){
    EndShaderMode();
    return end_shader_mode_result_ok(env);
}

// void BeginBlendMode(int mode);                              // Begin blending mode (alpha, additive, multiplied, subtract, custom)
UNIFEX_TERM begin_blend_mode(UnifexEnv *env, int mode){
    BeginBlendMode(mode);
    return begin_blend_mode_result_ok(env);
}

// void EndBlendMode(void);                                    // End blending mode (reset to default: alpha blending)
UNIFEX_TERM end_blend_mode(UnifexEnv *env){
    EndBlendMode();
    return end_blend_mode_result_ok(env);
}

// void BeginScissorMode(int x, int y, int width, int height); // Begin scissor mode (define screen area for following drawing)
UNIFEX_TERM begin_scissor_mode(UnifexEnv *env, int x, int y, int width, int height){
    BeginScissorMode(x, y, width, height);
    return begin_scissor_mode_result_ok(env);
}

// void EndScissorMode(void);                                  // End scissor mode
UNIFEX_TERM end_scissor_mode(UnifexEnv *env){
    EndScissorMode();
    return end_scissor_mode_result_ok(env);
}