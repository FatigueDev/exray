#include "exray.h"
#include <unifex/unifex.h>
#include <raylib.h>
#include <stdio.h>
#include <iostream>

void TraceLogFunction(int msgType, const char *text, va_list args) {

    switch (msgType)
    {
        case LOG_INFO: printf("[INFO] : "); break;
        case LOG_ERROR: printf("[ERROR]: "); break;
        case LOG_WARNING: printf("[WARN] : "); break;
        case LOG_DEBUG: printf("[DEBUG]: "); break;
        default: break;
    }

    vprintf(text, args);
    printf("\r\n");
}

void set_trace_log(UnifexEnv* env, void **priv_data) {
    UNIFEX_UNUSED(env);
    UNIFEX_UNUSED(priv_data);
    SetTraceLogCallback(TraceLogFunction);
}

int handle_load(UnifexEnv* env, void **priv_data) {
    set_trace_log(env, priv_data);
    return 0;
}

void handle_destroy_state(UnifexEnv *env, State *state) {
    UNIFEX_UNUSED(env);
    state->obj = nullptr;
}

int handle_upgrade(UnifexEnv* env, void** priv_data, void** old_priv_data){
    UNIFEX_UNUSED(env);
    UNIFEX_UNUSED(priv_data);
    UNIFEX_UNUSED(old_priv_data);
    return 0;
}

// This is CNode stuff. 
// int handle_main(int argc, char **argv) {
//     UnifexEnv env;
//     if (unifex_cnode_init(argc, argv, &env)) {
//         return 1;
//     }

//     while (!unifex_cnode_receive(&env))
//         ;

//     unifex_cnode_destroy(&env);
//     return 0;
// }

// This is STATE stuff.
// UNIFEX_TERM vector2_test(UnifexEnv* env, exVector2 vec2) {
//     // exVector2 exResult{x = (float)x, y = (float)y};
//     std:: cout << " Vec2: " << vec2.x << " " << vec2.y << std::endl;
//     return vector2_test_result_ok(env, vec2);
// }

// UNIFEX_TERM void_pointer_alloc(UnifexEnv* env) {
//     State* state = unifex_alloc_state(env);
//     Vector2* vec2 = new Vector2{50.0f, 50.0f};
//     state->obj = vec2;

//     return void_pointer_alloc_result_ok(env, state);
// }

// UNIFEX_TERM void_pointer_get(UnifexEnv* env, State* state) {
    
//     Vector2* casted = (Vector2*)state->obj;
//     std::cout << "Returning Vec2 with: " << casted->x << " " << casted->y << std::endl;
//     return void_pointer_get_result_ok(env, state);
// }