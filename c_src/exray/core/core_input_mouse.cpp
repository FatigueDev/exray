#include "../exray.cpp"
#include "core_input_mouse.h"
#include "../type_converter.cpp"

// # bool IsMouseButtonPressed(int button);                  // Check if a mouse button has been pressed once
// spec is_mouse_button_pressed(button :: int) :: {:ok :: label, is_pressed :: bool}
UNIFEX_TERM is_mouse_button_pressed(UnifexEnv *env, int button){
    return is_mouse_button_pressed_result_ok(env, IsMouseButtonPressed(button));
}

// # bool IsMouseButtonDown(int button);                     // Check if a mouse button is being pressed
// spec is_mouse_button_down(button :: int) :: {:ok :: label, is_down :: bool}
UNIFEX_TERM is_mouse_button_down(UnifexEnv *env, int button){
    return is_mouse_button_down_result_ok(env, IsMouseButtonDown(button));
}

// # bool IsMouseButtonReleased(int button);                 // Check if a mouse button has been released once
// spec is_mouse_button_released(button :: int) :: {:ok :: label, is_released :: bool}
UNIFEX_TERM is_mouse_button_released(UnifexEnv *env, int button){
    return is_mouse_button_released_result_ok(env, IsMouseButtonReleased(button));
}

// # bool IsMouseButtonUp(int button);                       // Check if a mouse button is NOT being pressed
// spec is_mouse_button_up(button :: int) :: {:ok :: label, is_up :: bool}
UNIFEX_TERM is_mouse_button_up(UnifexEnv *env, int button){
    return is_mouse_button_up_result_ok(env, IsMouseButtonUp(button));
}

// # int GetMouseX(void);                                    // Get mouse position X
// spec get_mouse_x() :: {:ok :: label, mouse_x :: int}
UNIFEX_TERM get_mouse_x(UnifexEnv *env){
    return get_mouse_x_result_ok(env, GetMouseX());
}

// # int GetMouseY(void);                                    // Get mouse position Y
// spec get_mouse_y() :: {:ok :: label, mouse_y :: int}
UNIFEX_TERM get_mouse_y(UnifexEnv *env){
    return get_mouse_y_result_ok(env, GetMouseY());
}

// # Vector2 GetMousePosition(void);                         // Get mouse position XY
// spec get_mouse_position() :: {:ok :: label, mouse_position :: exVector2}
UNIFEX_TERM get_mouse_position(UnifexEnv *env){
    return get_mouse_position_result_ok(env, ToExVector2(GetMousePosition()));
}

// # Vector2 GetMouseDelta(void);                            // Get mouse delta between frames
// spec get_mouse_delta() :: {:ok :: label, mouse_delta :: exVector2}
UNIFEX_TERM get_mouse_delta(UnifexEnv *env){
    return get_mouse_delta_result_ok(env, ToExVector2(GetMouseDelta()));
}

// # void SetMousePosition(int x, int y);                    // Set mouse position XY
// spec set_mouse_position(x :: int, y :: int) :: {:ok :: label}
UNIFEX_TERM set_mouse_position(UnifexEnv *env, int x, int y){
    SetMousePosition(x, y);
    return set_mouse_position_result_ok(env);
}

// # void SetMouseOffset(int offsetX, int offsetY);          // Set mouse offset
// spec set_mouse_offset(offset_x :: int, offset_y :: int) :: {:ok :: label}
UNIFEX_TERM set_mouse_offset(UnifexEnv *env, int offset_x, int offset_y){
    SetMouseOffset(offset_x, offset_y);
    return set_mouse_offset_result_ok(env);
}

// # void SetMouseScale(float scaleX, float scaleY);         // Set mouse scaling
// spec set_mouse_scale(scale_x :: float, scale_y :: float) :: {:ok :: label}
UNIFEX_TERM set_mouse_scale(UnifexEnv *env, double scale_x, double scale_y){
    SetMouseScale(scale_x, scale_y);
    return set_mouse_scale_result_ok(env);
}

// # float GetMouseWheelMove(void);                          // Get mouse wheel movement for X or Y, whichever is larger
// spec get_mouse_wheel_move() :: {:ok :: label, wheel_movement :: float}
UNIFEX_TERM get_mouse_wheel_move(UnifexEnv *env){
    return get_mouse_wheel_move_result_ok(env, GetMouseWheelMove());
}

// # Vector2 GetMouseWheelMoveV(void);                       // Get mouse wheel movement for both X and Y
// spec get_mouse_wheel_move_v() :: {:ok :: label, wheel_movement :: exVector2}
UNIFEX_TERM get_mouse_wheel_move_v(UnifexEnv *env){
    return get_mouse_wheel_move_v_result_ok(env, ToExVector2(GetMouseWheelMoveV()));
}

// # void SetMouseCursor(int cursor);                        // Set mouse cursor
// spec set_mouse_cursor(cursor :: int) :: {:ok :: label}
UNIFEX_TERM set_mouse_cursor(UnifexEnv *env, int cursor){
    SetMouseCursor(cursor);
    return set_mouse_cursor_result_ok(env);
}