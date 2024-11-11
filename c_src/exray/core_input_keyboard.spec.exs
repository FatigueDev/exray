module Exray.Core.Input.Keyboard.Loader
interface [NIF, CNode]
callback :load
state_type "State"

spec is_key_pressed(key :: int) :: {:ok :: label, pressed :: bool}
spec is_key_pressed_repeat(key :: int) :: {:ok :: label, pressed_repeat :: bool}
spec is_key_down(key :: int) :: {:ok :: label, key_down :: bool}
spec is_key_released(key :: int) :: {:ok :: label, key_released :: bool}
spec is_key_up(key :: int) :: {:ok :: label, key_up :: bool}
spec get_key_pressed() :: {:ok :: label, key :: int}
spec get_char_pressed() :: {:ok :: label, key :: int}
spec set_exit_key(key :: int) :: {:ok :: label}
