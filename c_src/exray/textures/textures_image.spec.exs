module Exray.Textures.Image.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

#### ---- DEBUG ------

  # Texture2D LoadTextureFromImage(Image image);                                                       // Load texture from image data
  spec load_texture_from_image(image :: exImage) :: texture :: exTexture
  # void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
  spec draw_texture(texture :: exTexture, pos_x :: int, pos_y :: int, tint :: exColor) :: :ok

## /DEBUG

# Image LoadImage(const char *fileName);                                                             // Load image from file into CPU memory (RAM)
spec load_image(file_name :: string) :: image :: exImage

# Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);       // Load image from RAW file data
# Image LoadImageSvg(const char *fileNameOrString, int width, int height);                           // Load image from SVG file data or string with specified size
# Image LoadImageAnim(const char *fileName, int *frames);                                            // Load image sequence from file (frames appended to image.data)
# Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
# Image LoadImageFromTexture(Texture2D texture);                                                     // Load image from GPU texture data
# Image LoadImageFromScreen(void);                                                                   // Load image from screen buffer and (screenshot)
# bool IsImageReady(Image image);                                                                    // Check if an image is ready
# void UnloadImage(Image image);                                                                     // Unload image from CPU memory (RAM)
# bool ExportImage(Image image, const char *fileName);                                               // Export image data to file, returns true on success
# unsigned char *ExportImageToMemory(Image image, const char *fileType, int *fileSize);              // Export image to memory buffer
# bool ExportImageAsCode(Image image, const char *fileName);                                         // Export image as code file defining an array of bytes, returns true on success
