module Exray.Core.Input.Keyboard.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

spec key_is_pressed(key :: int) :: key_pressed :: bool
spec key_is_pressed_repeat(key :: int) :: key_pressed_repeat :: bool
spec key_is_down(key :: int) :: key_down :: bool
spec key_is_released(key :: int) :: key_released :: bool
spec key_is_up(key :: int) :: key_up :: bool
spec get_key_pressed() :: key :: int
spec get_char_pressed() :: key :: int
spec set_exit_key(key :: int) :: :ok
