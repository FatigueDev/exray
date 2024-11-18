module(Exray.Textures.Texture.Loading.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# Texture2D LoadTexture(const char *fileName);                                                       // Load texture from file into GPU memory (VRAM)
spec(load_texture(file_name :: string) :: texture :: exTexture)

# Texture2D LoadTextureFromImage(Image image);                                                       // Load texture from image data
spec(load_texture_from_image(image :: exImage) :: texture :: exTexture)

# TextureCubemap LoadTextureCubemap(Image image, int layout);                                        // Load cubemap from image, multiple image cubemap layouts supported
spec(load_texture_cubemap(image :: exImage, layout :: int) :: texture :: exTexture)

# RenderTexture2D LoadRenderTexture(int width, int height);                                          // Load texture for rendering (framebuffer)
spec(load_render_texture(width :: int, height :: int) :: texture :: exRenderTexture)

# bool IsTextureValid(Texture2D texture);                                                            // Check if a texture is valid (loaded in GPU)
spec(texture_is_ready(texture :: exTexture) :: is_valid :: bool)

# void UnloadTexture(Texture2D texture);                                                             // Unload texture from GPU memory (VRAM)
spec(unload_texture(texture :: exTexture) :: :ok)

# bool IsRenderTextureValid(RenderTexture2D target);                                                 // Check if a render texture is valid (loaded in GPU)
spec(render_texture_is_ready(target :: exRenderTexture) :: is_valid :: bool)

# void UnloadRenderTexture(RenderTexture2D target);                                                  // Unload render texture from GPU memory (VRAM)
spec(unload_render_texture(target :: exRenderTexture) :: :ok)

# void UpdateTexture(Texture2D texture, const void *pixels);                                         // Update GPU texture with new data
# spec(update_texture(texture :: exTexture, pixels :: [state]) :: :ok)

# void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);                       // Update GPU texture rectangle with new data
# spec(update_texture_rec(texture :: exTexture, rec :: exRectangle, pixels :: [state]) :: :ok)
