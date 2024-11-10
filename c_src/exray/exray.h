#pragma once

typedef struct State State;

#include "_generated/exray.h"

#ifndef STATE
#define STATE

struct State {
public:
    void* obj;
};

#endif
// Alias structs
// typedef struct exVector3 exQuarternion;
// typedef struct exTexture exTexture2D;
// typedef struct exTexture exTextureCubemap;
// typedef struct exRenderTexture exRenderTexture2D;
// typedef struct exCamera3D exCamera;