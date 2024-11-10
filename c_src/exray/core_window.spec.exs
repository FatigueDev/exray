module Exray.Core.Window.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

@doc """
Initialize window and OpenGL context
iex> init_window(1024, 768, "Window Title")
#> {:ok}
"""
spec init_window(width :: int, height :: int, title :: string) :: {:ok :: label}

@doc """
Close window and unload OpenGL context
iex> close_window()
#> {:ok}
"""
spec close_window() :: {:ok :: label}

@doc """
Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
"""
spec window_should_close() :: {:ok :: label, window_should_close :: bool}

@doc """
Check if window has been initialized successfully
"""
spec is_window_ready() :: {:ok :: label, is_window_ready :: bool}

@doc """
Check if window is currently fullscreen
"""
spec is_window_fullscreen() :: {:ok :: label, is_window_fullscreen :: bool}

@doc """
Check if window is currently hidden (only PLATFORM_DESKTOP)
"""
spec is_window_hidden() :: {:ok :: label, is_window_hidden :: bool}

@doc """
Check if window is currently minimized (only PLATFORM_DESKTOP)
"""
spec is_window_minimized() :: {:ok :: label, is_window_minimized :: bool}

@doc """
Check if window is currently maximized (only PLATFORM_DESKTOP)
"""
spec is_window_maximized() :: {:ok :: label, is_window_maximized :: bool}

@doc """
Check if window is currently focused (only PLATFORM_DESKTOP)
"""
spec is_window_focused() :: {:ok :: label, is_window_focused :: bool}

@doc """
Check if window has been resized last frame
"""
spec is_window_resized() :: {:ok :: label, is_window_resized :: bool}

@doc """
Check if one specific window flag is enabled
"""
spec is_window_state(flag :: unsigned) :: {:ok :: label, is_window_state :: bool}

@doc """
Set window configuration state using flags (only PLATFORM_DESKTOP)
"""
spec set_window_state(flags :: unsigned) :: {:ok :: label}

@doc """
Clear window configuration state flags
"""
spec clear_window_state(flags :: unsigned) :: {:ok :: label}

@doc """
Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
"""
spec toggle_fullscreen() :: {:ok :: label}

@doc """
Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
"""
spec toggle_borderless_windowed() :: {:ok :: label}

@doc """
Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
"""
spec maximize_window() :: {:ok :: label}

@doc """
Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
"""
spec minimize_window() :: {:ok :: label}

@doc """
Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
"""
spec restore_window() :: {:ok :: label}

@doc """
Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
"""
spec set_window_icon(image :: exImage) :: {:ok :: label}

@doc """
Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
"""
spec set_window_icons(images :: [exImage]) :: {:ok :: label}

@doc """
Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
"""
spec set_window_title(title :: string) :: {:ok :: label}

@doc """
Set window position on screen (only PLATFORM_DESKTOP)
"""
spec set_window_position(x :: int, y :: int) :: {:ok :: label}

@doc """
Set monitor for the current window
"""
spec set_window_monitor(monitor :: int) :: {:ok :: label}

@doc """
Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
"""
spec set_window_min_size(width :: int, height :: int) :: {:ok :: label}

@doc """
Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
"""
spec set_window_max_size(width :: int, height :: int) :: {:ok :: label}

@doc """
Set window dimensions
"""
spec set_window_size(width :: int, height :: int) :: {:ok :: label}

@doc """
Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
"""
spec set_window_opacity(opacity :: float) :: {:ok :: label}

@doc """
Set window focused (only PLATFORM_DESKTOP)
"""
spec set_window_focused() :: {:ok :: label}

@doc """
Get native window handle
"""
spec get_window_handle() :: {:ok :: label, window_handle :: state}

@doc """
Get current screen width
"""
spec get_screen_width() :: {:ok :: label, screen_width :: int}

@doc """
Get current screen height
"""
spec get_screen_height() :: {:ok :: label, screen_height :: int}

@doc """
Get current render width (it considers HiDPI)
"""
spec get_render_width() :: {:ok :: label, render_width :: int}

@doc """
Get current render height (it considers HiDPI)
"""
spec get_render_height() :: {:ok :: label, render_height :: int}

@doc """
Get number of connected monitors
"""
spec get_monitor_count() :: {:ok :: label, monitor_count :: int}

@doc """
Get current connected monitor
"""
spec get_current_monitor() :: {:ok :: label, current_monitor :: int}

@doc """
Get specified monitor position
"""
spec get_monitor_position(monitor :: int) :: {:ok :: label, monitor_position :: exVector2}

@doc """
Get specified monitor width (current video mode used by monitor)
"""
spec get_monitor_width(monitor :: int) :: {:ok :: label, monitor_width :: int}

@doc """
Get specified monitor height (current video mode used by monitor)
"""
spec get_monitor_height(monitor :: int) :: {:ok :: label, monitor_height :: int}

@doc """
Get specified monitor physical width in millimetres
"""
spec get_monitor_physical_width(monitor :: int) :: {:ok :: label, monitor_physical_width :: int}

@doc """
Get specified monitor physical height in millimetres
"""
spec get_monitor_physical_height(monitor :: int) :: {:ok :: label, monitor_physical_height :: int}

@doc """
Get specified monitor refresh rate
"""
spec get_monitor_refresh_rate(monitor :: int) :: {:ok :: label, monitor_refresh_rate :: int}

@doc """
Get window position XY on monitor
"""
spec get_window_position() :: {:ok :: label, window_position :: exVector2}

@doc """
Get window scale DPI factor
"""
spec get_window_scale_dpi() :: {:ok :: label, window_scale_dpi :: exVector2}

@doc """
Get the human-readable, UTF-8 encoded name of the specified monitor
"""
spec get_monitor_name(monitor :: int) :: {:ok :: label, monitor_name :: string}

@doc """
Set clipboard text content
"""
spec set_clipboard_text(text :: string) :: {:ok :: label}

@doc """
Get clipboard text content
"""
spec get_clipboard_text() :: {:ok :: label, clipboard_text :: string}

@doc """
Enable waiting for events on EndDrawing(), no automatic event polling
"""
spec enable_event_waiting() :: {:ok :: label}

@doc """
Disable waiting for events on EndDrawing(), automatic events polling
"""
spec disable_event_waiting() :: {:ok :: label}
