module Exray.Core.Drawing.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
spec clear_background(color :: exColor) :: {:ok :: label}

# void BeginDrawing(void);                                    // Setup canvas (framebuffer) to start drawing
spec begin_drawing() :: {:ok :: label}

# void EndDrawing(void);                                      // End canvas drawing and swap buffers (double buffering)
spec end_drawing() :: {:ok :: label}

# void BeginMode2D(Camera2D camera);                          // Begin 2D mode with custom camera (2D)
spec begin_mode_2d(camera :: exCamera2D) :: {:ok :: label}

# void EndMode2D(void);                                       // Ends 2D mode with custom camera
spec end_mode_2d() :: {:ok :: label}

# void BeginMode3D(Camera3D camera);                          // Begin 3D mode with custom camera (3D)
spec begin_mode_3d(camera :: exCamera3D) :: {:ok :: label}

# void EndMode3D(void);                                       // Ends 3D mode and returns to default 2D orthographic mode
spec end_mode_3d() :: {:ok :: label}

# void BeginTextureMode(RenderTexture2D target);              // Begin drawing to render texture
spec begin_texture_mode(target :: exRenderTexture) :: {:ok :: label}

# void EndTextureMode(void);                                  // Ends drawing to render texture
spec end_texture_mode() :: {:ok :: label}

# void BeginShaderMode(Shader shader);                        // Begin custom shader drawing
spec begin_shader_mode(shader :: exShader) :: {:ok :: label}

# void EndShaderMode(void);                                   // End custom shader drawing (use default shader)
spec end_shader_mode() :: {:ok :: label}

# void BeginBlendMode(int mode);                              // Begin blending mode (alpha, additive, multiplied, subtract, custom)
spec begin_blend_mode(mode :: int) :: {:ok :: label}

# void EndBlendMode(void);                                    // End blending mode (reset to default: alpha blending)
spec end_blend_mode() :: {:ok :: label}

# void BeginScissorMode(int x, int y, int width, int height); // Begin scissor mode (define screen area for following drawing)
spec begin_scissor_mode(x :: int, y :: int, width :: int, height :: int) :: {:ok :: label}

# void EndScissorMode(void);                                  // End scissor mode
spec end_scissor_mode() :: {:ok :: label}

## Todo; VR stuff :)
# void BeginVrStereoMode(VrStereoConfig config);              // Begin stereo rendering (requires VR simulator)
# void EndVrStereoMode(void);                                 // End stereo rendering (requires VR simulator)
