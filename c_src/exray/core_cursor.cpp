#include "exray.cpp"
#include "core_cursor.h"

UNIFEX_TERM show_cursor(UnifexEnv *env){
    ShowCursor();
    return show_cursor_result_ok(env);
}

UNIFEX_TERM hide_cursor(UnifexEnv *env){
    HideCursor();
    return hide_cursor_result_ok(env);
}

UNIFEX_TERM is_cursor_hidden(UnifexEnv *env){
    return is_cursor_hidden_result_ok(env, IsCursorHidden());
}

UNIFEX_TERM enable_cursor(UnifexEnv *env){
    EnableCursor();
    return enable_cursor_result_ok(env);
}

UNIFEX_TERM disable_cursor(UnifexEnv *env){
    DisableCursor();
    return disable_cursor_result_ok(env);
}

UNIFEX_TERM is_cursor_on_screen(UnifexEnv *env){
    return is_cursor_on_screen_result_ok(env, IsCursorOnScreen());
}