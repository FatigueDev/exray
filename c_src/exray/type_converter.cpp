#include <raylib.h>

#ifndef STRUCTS
#define STRUCTS
#include "structs.h"
#endif

typedef struct State State;

#include <iostream>

exVector2 ToExVector2(Vector2 from) {
    return exVector2{x: from.x, y: from.y};
}

Vector2 ToVector2(exVector2 from) {
    return Vector2{x: from.x, y: from.y};
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