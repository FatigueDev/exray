module Exray.Core.Input.Keyboard.Loader
interface [NIF, CNode]
callback :load
state_type "State"

# bool IsKeyPressed(int key);                             // Check if a key has been pressed once
spec is_key_pressed(key :: int) :: {:ok :: label, pressed :: bool}

# bool IsKeyPressedRepeat(int key);                       // Check if a key has been pressed again (Only PLATFORM_DESKTOP)
spec is_key_pressed_repeat(key :: int) :: {:ok :: label, pressed_repeat :: bool}

# bool IsKeyDown(int key);                                // Check if a key is being pressed
spec is_key_down(key :: int) :: {:ok :: label, key_down :: bool}

# bool IsKeyReleased(int key);                            // Check if a key has been released once
spec is_key_released(key :: int) :: {:ok :: label, key_released :: bool}

# bool IsKeyUp(int key);                                  // Check if a key is NOT being pressed
spec is_key_up(key :: int) :: {:ok :: label, key_up :: bool}

# int GetKeyPressed(void);                                // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
spec get_key_pressed() :: {:ok :: label, key :: int}

# int GetCharPressed(void);                               // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
spec get_char_pressed() :: {:ok :: label, key :: int}

# void SetExitKey(int key);                               // Set a custom key to exit program (default is ESC)
spec set_exit_key(key :: int) :: {:ok :: label}
