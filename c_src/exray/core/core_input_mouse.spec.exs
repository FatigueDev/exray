module Exray.Core.Input.Mouse.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# // Input-related functions: mouse
# bool IsMouseButtonPressed(int button);                  // Check if a mouse button has been pressed once
spec is_mouse_button_pressed(button :: int) :: {:ok :: label, is_pressed :: bool}

# bool IsMouseButtonDown(int button);                     // Check if a mouse button is being pressed
spec is_mouse_button_down(button :: int) :: {:ok :: label, is_down :: bool}

# bool IsMouseButtonReleased(int button);                 // Check if a mouse button has been released once
spec is_mouse_button_released(button :: int) :: {:ok :: label, is_released :: bool}

# bool IsMouseButtonUp(int button);                       // Check if a mouse button is NOT being pressed
spec is_mouse_button_up(button :: int) :: {:ok :: label, is_up :: bool}

# int GetMouseX(void);                                    // Get mouse position X
spec get_mouse_x() :: {:ok :: label, mouse_x :: int}

# int GetMouseY(void);                                    // Get mouse position Y
spec get_mouse_y() :: {:ok :: label, mouse_y :: int}

# Vector2 GetMousePosition(void);                         // Get mouse position XY
spec get_mouse_position() :: {:ok :: label, mouse_position :: exVector2}

# Vector2 GetMouseDelta(void);                            // Get mouse delta between frames
spec get_mouse_delta() :: {:ok :: label, mouse_delta :: exVector2}

# void SetMousePosition(int x, int y);                    // Set mouse position XY
spec set_mouse_position(x :: int, y :: int) :: {:ok :: label}

# void SetMouseOffset(int offsetX, int offsetY);          // Set mouse offset
spec set_mouse_offset(offset_x :: int, offset_y :: int) :: {:ok :: label}

# void SetMouseScale(float scaleX, float scaleY);         // Set mouse scaling
spec set_mouse_scale(scale_x :: float, scale_y :: float) :: {:ok :: label}

# float GetMouseWheelMove(void);                          // Get mouse wheel movement for X or Y, whichever is larger
spec get_mouse_wheel_move() :: {:ok :: label, wheel_movement :: float}

# Vector2 GetMouseWheelMoveV(void);                       // Get mouse wheel movement for both X and Y
spec get_mouse_wheel_move_v() :: {:ok :: label, wheel_movement :: exVector2}

# void SetMouseCursor(int cursor);                        // Set mouse cursor
spec set_mouse_cursor(cursor :: int) :: {:ok :: label}
