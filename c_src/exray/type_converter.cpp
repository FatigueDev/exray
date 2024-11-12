#ifndef TYPE_CONVERTER
#define TYPE_CONVERTER

#include <raylib.h>

exVector2 ToExVector2(Vector2 from) {
    return exVector2{x: from.x, y: from.y};
}

Vector2 ToVector2(exVector2 from) {
    return Vector2{x: static_cast<float>(from.x), y: static_cast<float>(from.y)};
}

exVector3 ToExVector3(Vector3 from) {
    return exVector3{x: from.x, y: from.y, z: from.z};
}

Vector3 ToVector3(exVector3 from) {
    return Vector3{x: from.x, y: from.y, z: from.z};
}

exRectangle ToExRectangle(Rectangle from) {
    return exRectangle{
        x: from.x,
        y: from.y,
        width: from.width,
        height: from.height
    };
}

Rectangle ToRectangle(exRectangle from) {
    return Rectangle{
        x: from.x,
        y: from.y,
        width: from.width,
        height: from.height
    };
}

exImage ToExImage(UnifexEnv *env, Image from) {
    State* state = unifex_alloc_state(env);
    state->obj = from.data;
    return exImage{
        data: state,
        width: from.width,
        height: from.height,
        mipmaps: from.mipmaps,
        format: from.format
    };
}

Image ToImage(exImage from) {
    return Image{
        data: from.data->obj,
        width: from.width,
        height: from.height,
        mipmaps: from.mipmaps,
        format: from.format
    };
}

exColor ToExColor(Color from) {
    return exColor{
        r: from.r,
        g: from.g,
        b: from.b,
        a: from.a
    };
}

Color ToColor(exColor from) {
    return Color{
        r: from.r,
        g: from.g,
        b: from.b,
        a: from.a
    };
}

exCamera2D ToExCamera2D(Camera2D from) {
    return exCamera2D{
        offset: ToExVector2(from.offset),
        target: ToExVector2(from.target),
        rotation: from.rotation,
        zoom: from.zoom    
    };
}

Camera2D ToCamera2D(exCamera2D from) {
    return Camera2D{
        offset: ToVector2(from.offset),
        target: ToVector2(from.target),
        rotation: from.rotation,
        zoom: from.zoom    
    };
}

exCamera3D ToExCamera3D(Camera3D from) {
    return exCamera3D{
        position: ToExVector3(from.position),
        target: ToExVector3(from.target),
        up: ToExVector3(from.up),
        fovy: from.fovy,
        projection: from.projection
    };
}

Camera3D ToCamera3D(exCamera3D from) {
    return Camera3D{
        position: ToVector3(from.position),
        target: ToVector3(from.target),
        up: ToVector3(from.up),
        fovy: from.fovy,
        projection: from.projection
    };
}

exTexture ToExTexture(Texture from) {
    return exTexture{
        id: from.id,
        width: from.width,
        height: from.height,
        mipmaps: from.mipmaps,
        format: from.format
    };
}

Texture ToTexture(exTexture from) {
    return Texture{
        id: from.id,
        width: from.width,
        height: from.height,
        mipmaps: from.mipmaps,
        format: from.format
    };
}

exRenderTexture ToExRenderTexture(RenderTexture from) {
    return exRenderTexture{
        id: from.id,
        texture: ToExTexture(from.texture),
        depth: ToExTexture(from.texture)
    };
}

RenderTexture ToRenderTexture(exRenderTexture from) {
    return RenderTexture{
        id: from.id,
        texture: ToTexture(from.texture),
        depth: ToTexture(from.texture)
    };
}

exShader ToExShader(Shader from) {
    return exShader{
        id: from.id,
        locs: from.locs
        // NOTE! We need to also probably do locs_length in here because unifex can't fathom loosey-goosey arrays.
    };
}

Shader ToShader(exShader from) {
    return Shader{
        id: from.id,
        locs: from.locs
    };
}

#endif