#include "../exray.cpp"
#include "core_input_keyboard.h"

UNIFEX_TERM key_is_pressed(UnifexEnv *env, int key){
    return key_is_pressed_result(env, IsKeyPressed(key));
}

UNIFEX_TERM key_is_pressed_repeat(UnifexEnv *env, int key){
    return key_is_pressed_repeat_result(env, IsKeyPressedRepeat(key));
}

UNIFEX_TERM key_is_down(UnifexEnv *env, int key){
    return key_is_down_result(env, IsKeyDown(key));
}

UNIFEX_TERM key_is_released(UnifexEnv *env, int key){
    return key_is_released_result(env, IsKeyReleased(key));
}

UNIFEX_TERM key_is_up(UnifexEnv *env, int key){
    return key_is_up_result(env, IsKeyUp(key));
}

UNIFEX_TERM get_key_pressed(UnifexEnv* env){
    return get_key_pressed_result(env, GetKeyPressed());
}

UNIFEX_TERM get_char_pressed(UnifexEnv *env){
    return get_char_pressed_result(env, GetCharPressed());
}

UNIFEX_TERM set_exit_key(UnifexEnv *env, int key){
    SetExitKey(key);
    return set_exit_key_result(env);
}