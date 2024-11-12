#include "../exray.cpp"
#include "core_input_keyboard.h"

UNIFEX_TERM is_key_pressed(UnifexEnv *env, int key){
    return is_key_pressed_result_ok(env, IsKeyPressed(key));
}

UNIFEX_TERM is_key_pressed_repeat(UnifexEnv *env, int key){
    return is_key_pressed_repeat_result_ok(env, IsKeyPressedRepeat(key));
}

UNIFEX_TERM is_key_down(UnifexEnv *env, int key){
    return is_key_down_result_ok(env, IsKeyDown(key));
}

UNIFEX_TERM is_key_released(UnifexEnv *env, int key){
    return is_key_released_result_ok(env, IsKeyReleased(key));
}

UNIFEX_TERM is_key_up(UnifexEnv *env, int key){
    return is_key_up_result_ok(env, IsKeyUp(key));
}

UNIFEX_TERM get_key_pressed(UnifexEnv* env){
    return get_key_pressed_result_ok(env, GetKeyPressed());
}

UNIFEX_TERM get_char_pressed(UnifexEnv *env){
    return get_char_pressed_result_ok(env, GetCharPressed());
}

UNIFEX_TERM set_exit_key(UnifexEnv *env, int key){
    SetExitKey(key);
    return set_exit_key_result_ok(env);
}