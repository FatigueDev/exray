defmodule Exray.Core.Window do
  @moduledoc """
  Open, manage and handle the window that contains the cool stuff you create.
  """

  alias Exray.Structs.Vector2
  alias Exray.Structs.Image

  @doc """
  Initialize window and OpenGL context
  """
  @spec init_window(width :: integer, height :: integer, title :: binary) :: :ok
  defdelegate init_window(width, height, title), to: Exray.Core.Window.Loader

  @doc """
  Close window and unload OpenGL context
  """
  @spec close_window() :: :ok
  defdelegate close_window(), to: Exray.Core.Window.Loader

  @doc """
  Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
  """
  @spec window_should_close?() :: window_should_close :: boolean
  defdelegate window_should_close?(), to: Exray.Core.Window.Loader, as: :window_should_close

  @doc """
  Check if window has been initialized successfully
  """
  @spec window_is_ready?() :: window_is_ready :: boolean
  defdelegate window_is_ready?(), to: Exray.Core.Window.Loader, as: :window_is_ready

  @doc """
  Check if window is currently fullscreen
  """
  @spec window_is_fullscreen?() :: window_is_fullscreen :: boolean
  defdelegate window_is_fullscreen?(), to: Exray.Core.Window.Loader, as: :window_is_fullscreen

  @doc """
  Check if window is currently hidden (only PLATFORM_DESKTOP)
  """
  @spec window_is_hidden?() :: window_is_hidden :: boolean
  defdelegate window_is_hidden?(), to: Exray.Core.Window.Loader, as: :window_is_hidden

  @doc """
  Check if window is currently minimized (only PLATFORM_DESKTOP)
  """
  @spec window_is_minimized?() :: window_is_minimized :: boolean
  defdelegate window_is_minimized?(), to: Exray.Core.Window.Loader, as: :window_is_minimized

  @doc """
  Check if window is currently maximized (only PLATFORM_DESKTOP)
  """
  @spec window_is_maximized?() :: window_is_maximized :: boolean
  defdelegate window_is_maximized?(), to: Exray.Core.Window.Loader, as: :window_is_maximized

  @doc """
  Check if window is currently focused (only PLATFORM_DESKTOP)
  """
  @spec window_is_focused?() :: window_is_focused :: boolean
  defdelegate window_is_focused?(), to: Exray.Core.Window.Loader, as: :window_is_focused

  @doc """
  Check if window has been resized last frame
  """
  @spec window_is_resized?() :: window_is_resized :: boolean
  defdelegate window_is_resized?(), to: Exray.Core.Window.Loader, as: :window_is_resized

  @doc """
  Check if one specific window flag is enabled
  """
  @spec window_is_state?(flag :: non_neg_integer) :: window_is_state :: boolean
  defdelegate window_is_state?(flag), to: Exray.Core.Window.Loader, as: :window_is_state

  @doc """
  Set window configuration state using flags (only PLATFORM_DESKTOP)
  """
  @spec set_window_state(flags :: non_neg_integer) :: :ok
  defdelegate set_window_state(flags), to: Exray.Core.Window.Loader

  @doc """
  Clear window configuration state flags
  """
  @spec clear_window_state(flags :: non_neg_integer) :: :ok
  defdelegate clear_window_state(flags), to: Exray.Core.Window.Loader

  @doc """
  Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
  """
  @spec toggle_fullscreen() :: :ok
  defdelegate toggle_fullscreen(), to: Exray.Core.Window.Loader

  @doc """
  Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
  """
  @spec toggle_borderless_windowed() :: :ok
  defdelegate toggle_borderless_windowed(), to: Exray.Core.Window.Loader

  @doc """
  Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
  """
  @spec maximize_window() :: :ok
  defdelegate maximize_window(), to: Exray.Core.Window.Loader

  @doc """
  Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
  """
  @spec minimize_window() :: :ok
  defdelegate minimize_window(), to: Exray.Core.Window.Loader

  @doc """
  Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
  """
  @spec restore_window() :: :ok
  defdelegate restore_window(), to: Exray.Core.Window.Loader

  @doc """
  Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
  """
  @spec set_window_icon(image :: Image.t()) :: :ok
  defdelegate set_window_icon(image), to: Exray.Core.Window.Loader

  @doc """
  Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
  """
  @spec set_window_icons(images :: list(Image.t())) :: :ok
  defdelegate set_window_icons(images), to: Exray.Core.Window.Loader

  @doc """
  Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
  """
  @spec set_window_title(title :: binary) :: :ok
  defdelegate set_window_title(title), to: Exray.Core.Window.Loader

  @doc """
  Set window position on screen (only PLATFORM_DESKTOP)
  """
  @spec set_window_position(x :: integer, y :: integer) :: :ok
  defdelegate set_window_position(x, y), to: Exray.Core.Window.Loader

  @doc """
  Set monitor for the current window
  """
  @spec set_window_monitor(monitor :: integer) :: :ok
  defdelegate set_window_monitor(monitor), to: Exray.Core.Window.Loader

  @doc """
  Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
  """
  @spec set_window_min_size(width :: integer, height :: integer) :: :ok
  defdelegate set_window_min_size(width, height), to: Exray.Core.Window.Loader

  @doc """
  Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
  """
  @spec set_window_max_size(width :: integer, height :: integer) :: :ok
  defdelegate set_window_max_size(width, height), to: Exray.Core.Window.Loader

  @doc """
  Set window dimensions
  """
  @spec set_window_size(width :: integer, height :: integer) :: :ok
  defdelegate set_window_size(width, height), to: Exray.Core.Window.Loader

  @doc """
  Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
  """
  @spec set_window_opacity(opacity :: float) :: :ok
  defdelegate set_window_opacity(opacity), to: Exray.Core.Window.Loader

  @doc """
  Set window focused (only PLATFORM_DESKTOP)
  """
  @spec set_window_focused() :: :ok
  defdelegate set_window_focused(), to: Exray.Core.Window.Loader

  @doc """
  Get native window handle
  """
  @spec get_window_handle() :: window_handle :: term
  defdelegate get_window_handle(), to: Exray.Core.Window.Loader

  @doc """
  Get current screen width
  """
  @spec get_screen_width() :: screen_width :: integer
  defdelegate get_screen_width(), to: Exray.Core.Window.Loader

  @doc """
  Get current screen height
  """
  @spec get_screen_height() :: screen_height :: integer
  defdelegate get_screen_height(), to: Exray.Core.Window.Loader

  @doc """
  Get current render width (it considers HiDPI)
  """
  @spec get_render_width() :: render_width :: integer
  defdelegate get_render_width(), to: Exray.Core.Window.Loader

  @doc """
  Get current render height (it considers HiDPI)
  """
  @spec get_render_height() :: render_height :: integer
  defdelegate get_render_height(), to: Exray.Core.Window.Loader

  @doc """
  Get number of connected monitors
  """
  @spec get_monitor_count() :: monitor_count :: integer
  defdelegate get_monitor_count(), to: Exray.Core.Window.Loader

  @doc """
  Get current connected monitor
  """
  @spec get_current_monitor() :: current_monitor :: integer
  defdelegate get_current_monitor(), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor position
  """
  @spec get_monitor_position(monitor :: integer) :: monitor_position :: Vector2.t()
  defdelegate get_monitor_position(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor width (current video mode used by monitor)
  """
  @spec get_monitor_width(monitor :: integer) :: monitor_width :: integer
  defdelegate get_monitor_width(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor height (current video mode used by monitor)
  """
  @spec get_monitor_height(monitor :: integer) :: monitor_height :: integer
  defdelegate get_monitor_height(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor physical width in millimetres
  """
  @spec get_monitor_physical_width(monitor :: integer) :: monitor_physical_width :: integer
  defdelegate get_monitor_physical_width(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor physical height in millimetres
  """
  @spec get_monitor_physical_height(monitor :: integer) :: monitor_physical_height :: integer
  defdelegate get_monitor_physical_height(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get specified monitor refresh rate
  """
  @spec get_monitor_refresh_rate(monitor :: integer) :: monitor_refresh_rate :: integer
  defdelegate get_monitor_refresh_rate(monitor), to: Exray.Core.Window.Loader

  @doc """
  Get window position XY on monitor
  """
  @spec get_window_position() :: window_position :: Vector2.t()
  defdelegate get_window_position(), to: Exray.Core.Window.Loader

  @doc """
  Get window scale DPI factor
  """
  @spec get_window_scale_dpi() :: window_scale_dpi :: Vector2.t()
  defdelegate get_window_scale_dpi(), to: Exray.Core.Window.Loader

  @doc """
  Get the human-readable, UTF-8 encoded name of the specified monitor
  """
  @spec get_monitor_name(monitor :: integer) :: monitor_name :: binary
  defdelegate get_monitor_name(monitor), to: Exray.Core.Window.Loader

  @doc """
  Set clipboard text content
  """
  @spec set_clipboard_text(text :: binary) :: :ok
  defdelegate set_clipboard_text(text), to: Exray.Core.Window.Loader

  @doc """
  Get clipboard text content
  """
  @spec get_clipboard_text() :: clipboard_text :: binary
  defdelegate get_clipboard_text(), to: Exray.Core.Window.Loader

  @doc """
  Enable waiting for events on EndDrawing(), no automatic event polling
  """
  @spec enable_event_waiting() :: :ok
  defdelegate enable_event_waiting(), to: Exray.Core.Window.Loader

  @doc """
  Disable waiting for events on EndDrawing(), automatic events polling
  """
  @spec disable_event_waiting() :: :ok
  defdelegate disable_event_waiting(), to: Exray.Core.Window.Loader
end
