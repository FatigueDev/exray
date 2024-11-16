#include "../exray.cpp"
#include "core_framecontrol.h"

UNIFEX_TERM swap_screen_buffer(UnifexEnv *env) {
    SwapScreenBuffer();
    return swap_screen_buffer_result(env);
}

UNIFEX_TERM poll_input_events(UnifexEnv *env) {
    PollInputEvents();
    return poll_input_events_result(env);
}

UNIFEX_TERM wait_time(UnifexEnv *env, double seconds) {
    WaitTime(seconds);
    return wait_time_result(env);
}