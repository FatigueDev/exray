module Exray.Core.Cursor.Loader
interface [NIF, CNode]
callback :load
state_type "State"

spec show_cursor() :: {:ok :: label}
spec hide_cursor() :: {:ok :: label}
spec is_cursor_hidden() :: {:ok :: label, is_cursor_hidden :: bool}
spec enable_cursor() :: {:ok :: label}
spec disable_cursor() :: {:ok :: label}
spec is_cursor_on_screen() :: {:ok :: label, is_cursor_on_screen :: bool}
