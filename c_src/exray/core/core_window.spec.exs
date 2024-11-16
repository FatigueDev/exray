module Exray.Core.Window.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec init_window(width :: int, height :: int, title :: string) :: :ok
spec close_window() :: :ok

spec window_should_close() :: window_should_close :: bool

spec window_is_ready() :: window_is_ready :: bool
spec window_is_fullscreen() :: window_is_fullscreen :: bool
spec window_is_hidden() :: window_is_hidden :: bool
spec window_is_minimized() :: window_is_minimized :: bool
spec window_is_maximized() :: window_is_maximized :: bool
spec window_is_focused() :: window_is_focused :: bool
spec window_is_resized() :: window_is_resized :: bool
spec window_is_state(flag :: unsigned) :: window_is_state :: bool

spec set_window_state(flags :: unsigned) :: :ok
spec clear_window_state(flags :: unsigned) :: :ok

spec toggle_fullscreen() :: :ok
spec toggle_borderless_windowed() :: :ok
spec maximize_window() :: :ok
spec minimize_window() :: :ok
spec restore_window() :: :ok

spec set_window_icon(image :: exImage) :: :ok
spec set_window_icons(images :: [exImage]) :: :ok
spec set_window_title(title :: string) :: :ok
spec set_window_position(x :: int, y :: int) :: :ok
spec set_window_monitor(monitor :: int) :: :ok
spec set_window_min_size(width :: int, height :: int) :: :ok
spec set_window_max_size(width :: int, height :: int) :: :ok
spec set_window_size(width :: int, height :: int) :: :ok
spec set_window_opacity(opacity :: float) :: :ok
spec set_window_focused() :: :ok
spec get_window_handle() :: window_handle :: state

spec get_screen_width() :: screen_width :: int
spec get_screen_height() :: screen_height :: int

spec get_render_width() :: render_width :: int
spec get_render_height() :: render_height :: int

spec get_monitor_count() :: monitor_count :: int
spec get_current_monitor() :: current_monitor :: int
spec get_monitor_position(monitor :: int) :: monitor_position :: exVector2
spec get_monitor_width(monitor :: int) :: monitor_width :: int
spec get_monitor_height(monitor :: int) :: monitor_height :: int
spec get_monitor_physical_width(monitor :: int) :: monitor_physical_width :: int
spec get_monitor_physical_height(monitor :: int) :: monitor_physical_height :: int
spec get_monitor_refresh_rate(monitor :: int) :: monitor_refresh_rate :: int
spec get_window_position() :: window_position :: exVector2
spec get_window_scale_dpi() :: window_scale_dpi :: exVector2
spec get_monitor_name(monitor :: int) :: monitor_name :: string

spec set_clipboard_text(text :: string) :: :ok
spec get_clipboard_text() :: clipboard_text :: string

spec enable_event_waiting() :: :ok
spec disable_event_waiting() :: :ok
