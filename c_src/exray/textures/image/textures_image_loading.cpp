#include "../../exray.cpp"
#include "textures_image_loading.h"
#include "../../type_converter.cpp"

UNIFEX_TERM load_image(UnifexEnv *env, char *file_name){
    return load_image_result(env, ToExImage(env, LoadImage(file_name)));
}

// # Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);       // Load image from RAW file data
UNIFEX_TERM load_image_raw(UnifexEnv *env, char *file_name, int width, int height, int format, int header_size){
    return load_image_raw_result(env, ToExImage(env, LoadImageRaw(file_name, width, height, format, header_size)));
}

// # Image LoadImageSvg(const char *fileNameOrString, int width, int height);                           // Load image from SVG file data or string with UNIFEX_TERMified UnifexEnv *env, size
// }
UNIFEX_TERM load_image_svg(UnifexEnv *env, char *file_name_or_string, int width, int height){
    return load_image_svg_result(env, ToExImage(env, LoadImageSvg(file_name_or_string, width, height)));
}

// # Image LoadImageAnim(const char *fileName, int *frames);                                            // Load image sequence from file (frames appended to image.data)
UNIFEX_TERM load_image_anim(UnifexEnv *env, char *file_name, int *frames, unsigned int frames_length){
    UNIFEX_UNUSED(frames_length);
    return load_image_anim_result(env, ToExImage(env, LoadImageAnim(file_name, frames)));
}

// # Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
UNIFEX_TERM load_image_from_memory(UnifexEnv *env, char *file_type, char *file_data, int data_size){
    return load_image_from_memory_result(env, ToExImage(env, LoadImageFromMemory(file_type, reinterpret_cast<unsigned char*>(file_data), data_size)));
}

// # Image LoadImageFromTexture(Texture2D texture);                                                     // Load image from GPU texture data
UNIFEX_TERM load_image_from_texture(UnifexEnv *env, exTexture texture){
    return load_image_from_texture_result(env, ToExImage(env, LoadImageFromTexture(ToTexture(texture))));
}

// # Image LoadImageFromScreen(void);                                                                   // Load image from screen buffer and (screenshot)
UNIFEX_TERM load_image_from_screen(UnifexEnv *env){
    return load_image_from_screen_result(env, ToExImage(env, LoadImageFromScreen()));
}

// # bool IsImageReady(Image image);                                                                    // Check if an image is ready
UNIFEX_TERM image_is_ready(UnifexEnv *env, exImage image){
    return image_is_ready_result(env, IsImageReady(ToImage(image)));
}

// # void UnloadImage(Image image);                                                                     // Unload image from CPU memory (RAM)
UNIFEX_TERM unload_image(UnifexEnv *env, exImage image){
    UnloadImage(ToImage(image));
    return unload_image_result(env);
}

// # bool ExportImage(Image image, const char *fileName);                                               // Export image data to file, returns true on success
UNIFEX_TERM export_image(UnifexEnv *env, exImage image, char *file_name){
    return export_image_result(env, ExportImage(ToImage(image), file_name));
}

// # unsigned char *ExportImageToMemory(Image image, const char *fileType, int *fileSize);              // Export image to memory buffer
UNIFEX_TERM export_image_to_memory(UnifexEnv *env, exImage image, char *file_type, int *file_size, unsigned int file_size_length){
    UNIFEX_UNUSED(file_size_length);
    return export_image_to_memory_result(env, reinterpret_cast<const char *>(ExportImageToMemory(ToImage(image), file_type, file_size)));
}

// # bool ExportImageAsCode(Image image, const char *fileName);                                         // Export image as code file defining an array of bytes, returns true on success
UNIFEX_TERM export_image_as_code(UnifexEnv *env, exImage image, char *file_name){
    return export_image_as_code_result(env, ExportImageAsCode(ToImage(image), file_name));
}

// UNIFEX_TERM load_texture_from_image(UnifexEnv *env, exImage image){
//     return load_texture_from_image_result(env, ToExTexture((Texture)LoadTextureFromImage(ToImage(image))));
// }

// UNIFEX_TERM draw_texture(UnifexEnv *env, exTexture texture, int pos_x, int pos_y, exColor tint) {
//     DrawTexture(ToTexture(texture), pos_x, pos_y, ToColor(tint));
//     return draw_texture_result(env);
// }