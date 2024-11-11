module Exray.Core.Window.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec init_window(width :: int, height :: int, title :: string) :: {:ok :: label}
spec close_window() :: {:ok :: label}

spec window_should_close() :: {:ok :: label, window_should_close :: bool}

spec is_window_ready() :: {:ok :: label, is_window_ready :: bool}
spec is_window_fullscreen() :: {:ok :: label, is_window_fullscreen :: bool}
spec is_window_hidden() :: {:ok :: label, is_window_hidden :: bool}
spec is_window_minimized() :: {:ok :: label, is_window_minimized :: bool}
spec is_window_maximized() :: {:ok :: label, is_window_maximized :: bool}
spec is_window_focused() :: {:ok :: label, is_window_focused :: bool}
spec is_window_resized() :: {:ok :: label, is_window_resized :: bool}
spec is_window_state(flag :: unsigned) :: {:ok :: label, is_window_state :: bool}

spec set_window_state(flags :: unsigned) :: {:ok :: label}
spec clear_window_state(flags :: unsigned) :: {:ok :: label}

spec toggle_fullscreen() :: {:ok :: label}
spec toggle_borderless_windowed() :: {:ok :: label}
spec maximize_window() :: {:ok :: label}
spec minimize_window() :: {:ok :: label}
spec restore_window() :: {:ok :: label}

spec set_window_icon(image :: exImage) :: {:ok :: label}
spec set_window_icons(images :: [exImage]) :: {:ok :: label}
spec set_window_title(title :: string) :: {:ok :: label}
spec set_window_position(x :: int, y :: int) :: {:ok :: label}
spec set_window_monitor(monitor :: int) :: {:ok :: label}
spec set_window_min_size(width :: int, height :: int) :: {:ok :: label}
spec set_window_max_size(width :: int, height :: int) :: {:ok :: label}
spec set_window_size(width :: int, height :: int) :: {:ok :: label}
spec set_window_opacity(opacity :: float) :: {:ok :: label}
spec set_window_focused() :: {:ok :: label}
spec get_window_handle() :: {:ok :: label, window_handle :: state}

spec get_screen_width() :: {:ok :: label, screen_width :: int}
spec get_screen_height() :: {:ok :: label, screen_height :: int}

spec get_render_width() :: {:ok :: label, render_width :: int}
spec get_render_height() :: {:ok :: label, render_height :: int}

spec get_monitor_count() :: {:ok :: label, monitor_count :: int}
spec get_current_monitor() :: {:ok :: label, current_monitor :: int}
spec get_monitor_position(monitor :: int) :: {:ok :: label, monitor_position :: exVector2}
spec get_monitor_width(monitor :: int) :: {:ok :: label, monitor_width :: int}
spec get_monitor_height(monitor :: int) :: {:ok :: label, monitor_height :: int}
spec get_monitor_physical_width(monitor :: int) :: {:ok :: label, monitor_physical_width :: int}
spec get_monitor_physical_height(monitor :: int) :: {:ok :: label, monitor_physical_height :: int}
spec get_monitor_refresh_rate(monitor :: int) :: {:ok :: label, monitor_refresh_rate :: int}
spec get_window_position() :: {:ok :: label, window_position :: exVector2}
spec get_window_scale_dpi() :: {:ok :: label, window_scale_dpi :: exVector2}
spec get_monitor_name(monitor :: int) :: {:ok :: label, monitor_name :: string}

spec set_clipboard_text(text :: string) :: {:ok :: label}
spec get_clipboard_text() :: {:ok :: label, clipboard_text :: string}

spec enable_event_waiting() :: {:ok :: label}
spec disable_event_waiting() :: {:ok :: label}
