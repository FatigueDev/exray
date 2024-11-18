module(Exray.Textures.Image.Loading.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

#### ---- DEBUG ------

# # Texture2D LoadTextureFromImage(Image image);                                                       // Load texture from image data
# spec(load_texture_from_image(image :: exImage) :: texture :: exTexture)
# # void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
# spec(draw_texture(texture :: exTexture, pos_x :: int, pos_y :: int, tint :: exColor) :: :ok)

# ## /DEBUG

# Image LoadImage(const char *fileName);                                                             // Load image from file into CPU memory (RAM)
spec(load_image(file_name :: string) :: image :: exImage)

# Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);       // Load image from RAW file data
spec(
  load_image_raw(
    file_name :: string,
    width :: int,
    height :: int,
    format :: int,
    header_size :: int
  ) :: image :: exImage
)

# Image LoadImageSvg(const char *fileNameOrString, int width, int height);                           // Load image from SVG file data or string with specified size
spec(
  load_image_svg(file_name_or_string :: string, width :: int, height :: int) :: image :: exImage
)

# Image LoadImageAnim(const char *fileName, int *frames);                                            // Load image sequence from file (frames appended to image.data)
spec(load_image_anim(file_name :: string, frames :: [int]) :: image :: exImage)

# Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
spec(
  load_image_from_memory(file_type :: string, file_data :: string, data_size :: int) ::
    image :: exImage
)

# Image LoadImageFromTexture(Texture2D texture);                                                     // Load image from GPU texture data
spec(load_image_from_texture(texture :: exTexture) :: image :: exImage)

# Image LoadImageFromScreen(void);                                                                   // Load image from screen buffer and (screenshot)
spec(load_image_from_screen() :: image :: exImage)

# bool IsImageReady(Image image);                                                                    // Check if an image is ready
spec(image_is_ready(image :: exImage) :: image_is_ready :: bool)

# void UnloadImage(Image image);                                                                     // Unload image from CPU memory (RAM)
spec(unload_image(image :: exImage) :: :ok)

# bool ExportImage(Image image, const char *fileName);                                               // Export image data to file, returns true on success
spec(export_image(image :: exImage, file_name :: string) :: exported :: bool)

# unsigned char *ExportImageToMemory(Image image, const char *fileType, int *fileSize);              // Export image to memory buffer
spec(
  export_image_to_memory(image :: exImage, file_type :: string, file_size :: [int]) ::
    buffer :: string
)

# bool ExportImageAsCode(Image image, const char *fileName);                                         // Export image as code file defining an array of bytes, returns true on success
spec(export_image_as_code(image :: exImage, file_name :: string) :: exported :: bool)
