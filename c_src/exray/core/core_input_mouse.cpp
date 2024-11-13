#include "../exray.cpp"
#include "core_input_mouse.h"
#include "../type_converter.cpp"

UNIFEX_TERM mouse_button_is_pressed(UnifexEnv *env, int button){
    return mouse_button_is_pressed_result(env, IsMouseButtonPressed(button));
}

UNIFEX_TERM mouse_button_is_down(UnifexEnv *env, int button){
    return mouse_button_is_down_result(env, IsMouseButtonDown(button));
}

UNIFEX_TERM mouse_button_is_released(UnifexEnv *env, int button){
    return mouse_button_is_released_result(env, IsMouseButtonReleased(button));
}

UNIFEX_TERM mouse_button_is_up(UnifexEnv *env, int button){
    return mouse_button_is_up_result(env, IsMouseButtonUp(button));
}

UNIFEX_TERM get_mouse_x(UnifexEnv *env){
    return get_mouse_x_result(env, GetMouseX());
}

UNIFEX_TERM get_mouse_y(UnifexEnv *env){
    return get_mouse_y_result(env, GetMouseY());
}

UNIFEX_TERM get_mouse_position(UnifexEnv *env){
    return get_mouse_position_result(env, ToExVector2(GetMousePosition()));
}

UNIFEX_TERM get_mouse_delta(UnifexEnv *env){
    return get_mouse_delta_result(env, ToExVector2(GetMouseDelta()));
}

UNIFEX_TERM set_mouse_position(UnifexEnv *env, int x, int y){
    SetMousePosition(x, y);
    return set_mouse_position_result(env);
}

UNIFEX_TERM set_mouse_offset(UnifexEnv *env, int offset_x, int offset_y){
    SetMouseOffset(offset_x, offset_y);
    return set_mouse_offset_result(env);
}

UNIFEX_TERM set_mouse_scale(UnifexEnv *env, double scale_x, double scale_y){
    SetMouseScale(scale_x, scale_y);
    return set_mouse_scale_result(env);
}

UNIFEX_TERM get_mouse_wheel_move(UnifexEnv *env){
    return get_mouse_wheel_move_result(env, GetMouseWheelMove());
}

UNIFEX_TERM get_mouse_wheel_move_v(UnifexEnv *env){
    return get_mouse_wheel_move_v_result(env, ToExVector2(GetMouseWheelMoveV()));
}

UNIFEX_TERM set_mouse_cursor(UnifexEnv *env, int cursor){
    SetMouseCursor(cursor);
    return set_mouse_cursor_result(env);
}