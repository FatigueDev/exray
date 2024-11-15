#include "../exray.cpp"
#include "core_timing.h"

UNIFEX_TERM set_target_fps(UnifexEnv *env, int fps){
    SetTargetFPS(fps);
    return set_target_fps_result(env);
}

UNIFEX_TERM get_frame_time(UnifexEnv *env){
    return get_frame_time_result(env, GetFrameTime());
}

UNIFEX_TERM get_time(UnifexEnv *env){
    return get_time_result(env, GetTime());
}

UNIFEX_TERM get_fps(UnifexEnv *env){
    return get_fps_result(env, GetFPS());
}