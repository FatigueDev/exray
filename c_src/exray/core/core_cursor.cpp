#include "../exray.cpp"
#include "core_cursor.h"

UNIFEX_TERM show_cursor(UnifexEnv *env){
    ShowCursor();
    return show_cursor_result(env);
}

UNIFEX_TERM hide_cursor(UnifexEnv *env){
    HideCursor();
    return hide_cursor_result(env);
}

UNIFEX_TERM cursor_is_hidden(UnifexEnv *env){
    return cursor_is_hidden_result(env, IsCursorHidden());
}

UNIFEX_TERM enable_cursor(UnifexEnv *env){
    EnableCursor();
    return enable_cursor_result(env);
}

UNIFEX_TERM disable_cursor(UnifexEnv *env){
    DisableCursor();
    return disable_cursor_result(env);
}

UNIFEX_TERM cursor_is_on_screen(UnifexEnv *env){
    return cursor_is_on_screen_result(env, IsCursorOnScreen());
}