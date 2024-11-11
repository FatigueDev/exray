#include "exray.cpp"
#include "core_input_keyboard.h"

// # bool IsKeyPressed(int key);                             // Check if a key has been pressed once
// spec is_key_pressed(key :: int) :: {:ok :: label, pressed :: bool}
UNIFEX_TERM is_key_pressed(UnifexEnv *env, int key){
    return is_key_pressed_result_ok(env, IsKeyPressed(key));
}

// # bool IsKeyPressedRepeat(int key);                       // Check if a key has been pressed again (Only PLATFORM_DESKTOP)
// spec is_key_pressed_repeat(key :: int) :: {:ok :: label, pressed_repeat :: bool}
UNIFEX_TERM is_key_pressed_repeat(UnifexEnv *env, int key){
    return is_key_pressed_repeat_result_ok(env, IsKeyPressedRepeat(key));
}

// # bool IsKeyDown(int key);                                // Check if a key is being pressed
// spec is_key_down(key :: int) :: {:ok :: label, key_down :: bool}
UNIFEX_TERM is_key_down(UnifexEnv *env, int key){
    return is_key_down_result_ok(env, IsKeyDown(key));
}

// # bool IsKeyReleased(int key);                            // Check if a key has been released once
// spec is_key_released(key :: int) :: {:ok :: label, key_released :: bool}
UNIFEX_TERM is_key_released(UnifexEnv *env, int key){
    return is_key_released_result_ok(env, IsKeyReleased(key));
}

// # bool IsKeyUp(int key);                                  // Check if a key is NOT being pressed
// spec is_key_up(key :: int) :: {:ok :: label, key_up :: bool}
UNIFEX_TERM is_key_up(UnifexEnv *env, int key){
    return is_key_up_result_ok(env, IsKeyUp(key));
}

// # int GetKeyPressed(void);                                // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
// spec get_key_pressed() :: {:ok :: label, key :: int}
UNIFEX_TERM get_key_pressed(UnifexEnv* env){
    return get_key_pressed_result_ok(env, GetKeyPressed());
}

// # int GetCharPressed(void);                               // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
// spec get_char_pressed() :: {:ok :: label, key :: int}
UNIFEX_TERM get_char_pressed(UnifexEnv *env){
    return get_char_pressed_result_ok(env, GetCharPressed());
}

// # void SetExitKey(int key);                               // Set a custom key to exit program (default is ESC)
// spec set_exit_key(key :: int) :: {:ok :: label}
UNIFEX_TERM set_exit_key(UnifexEnv *env, int key){
    SetExitKey(key);
    return set_exit_key_result_ok(env);
}