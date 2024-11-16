module Exray.Core.Cursor.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

spec show_cursor() :: :ok
spec hide_cursor() :: :ok
spec cursor_is_hidden() :: cursor_is_hidden :: bool
spec enable_cursor() :: :ok
spec disable_cursor() :: :ok
spec cursor_is_on_screen() :: cursor_is_on_screen :: bool
