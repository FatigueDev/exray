defmodule Exray.Core.Window do
  import DelegateUtils

  alias Exray.Structs.Vector2
  alias Exray.Structs.Image

  @loader Exray.Core.Window.Loader

  @moduledoc false

  @doc """
  Initialize window and OpenGL context

      init_window(1024, 768, "Window Title")
      => {:ok}
  """
  @spec init_window(integer, integer, binary) :: {:ok}
  defdelegate init_window(width, height, title), to: @loader

  @doc """
  Close window and unload OpenGL context

      close_window()
      => {:ok}
  """
  @spec close_window() :: {:ok}
  defdelegate close_window(), to: @loader

  @doc """
  Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)

      if window_should_close?() do
        # Escape or close icon pressed
      else
        # Escape or close icon NOT pressed
      end

  """
  @spec window_should_close?() :: true | false
  def window_should_close?() do
    loader_boolean_result_to_predicate_result(
      @loader.window_should_close()
    )
  end

  @doc """
  Native Function: `IsWindowReady`

  Check if window has been initialized successfully
  """
  @spec window_ready?() :: true | false
  def window_ready?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_ready()
    )
  end

  @doc """
  Native Function: `IsWindowFullscreen`

  Check if window is currently fullscreen
  """
  @spec window_fullscreen?() :: true | false
  def window_fullscreen?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_fullscreen()
    )
  end

  @doc """
  Check if window is currently hidden (only PLATFORM_DESKTOP)
  """
  @spec window_hidden?() :: true | false
  def window_hidden?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_hidden()
    )
  end

  @doc """
  Check if window is currently minimized (only PLATFORM_DESKTOP)
  """
  @spec window_minimized?() :: true | false
  def window_minimized?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_minimized()
    )
  end

  @doc """
  Check if window is currently maximized (only PLATFORM_DESKTOP)
  """
  @spec window_maximized?() :: true | false
  def window_maximized?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_maximized()
    )
  end

  @doc """
  Check if window is currently focused (only PLATFORM_DESKTOP)
  """
  @spec window_focused?() :: true | false
  def window_focused?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_focused()
    )
  end

  @doc """
  Check if window has been resized last frame
  """
  @spec window_resized?() :: true | false
  def window_resized?() do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_resized()
    )
  end

  @doc """
  Check if one specific window flag is enabled
  """
  @spec window_state?(non_neg_integer) :: true | false
  def window_state?(flag) do
    loader_boolean_result_to_predicate_result(
      @loader.is_window_state(flag)
    )
  end

  @doc """
  Set window configuration state using flags (only PLATFORM_DESKTOP)
  """
  @spec set_window_state(non_neg_integer) :: {:ok}
  defdelegate set_window_state(flags), to: @loader

  @doc """
  Clear window configuration state flags
  """
  @spec clear_window_state(non_neg_integer) :: {:ok}
  defdelegate clear_window_state(flags), to: @loader

  @doc """
  Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
  """
  @spec toggle_fullscreen() :: {:ok}
  defdelegate toggle_fullscreen(), to: @loader

  @doc """
  Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
  """
  @spec toggle_borderless_windowed() :: {:ok}
  defdelegate toggle_borderless_windowed(), to: @loader

  @doc """
  Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
  """
  @spec maximize_window() :: {:ok}
  defdelegate maximize_window(), to: @loader

  @doc """
  Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
  """
  @spec minimize_window() :: {:ok}
  defdelegate minimize_window(), to: @loader

  @doc """
  Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
  """
  @spec restore_window() :: {:ok}
  defdelegate restore_window(), to: @loader

  @doc """
  Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
  """
  @spec set_window_icon(Image) :: {:ok}
  defdelegate set_window_icon(image), to: @loader

  @doc """
  Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
  """
  @spec set_window_icons(list(Image)) :: {:ok}
  defdelegate set_window_icons(images), to: @loader

  @doc """
  Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
  """
  @spec set_window_title(binary) :: {:ok}
  defdelegate set_window_title(title), to: @loader

  @doc """
  Set window position on screen (only PLATFORM_DESKTOP)
  """
  @spec set_window_position(integer, integer) :: {:ok}
  defdelegate set_window_position(x, y), to: @loader

  ## This is a custom implementation.. But I'll leave it out for now.
  # @doc """
  # Set window position on screen (only PLATFORM_DESKTOP)
  # """
  # @spec set_window_position(Exray.Structs.Vector2) :: {:ok}
  # def set_window_position(%Exray.Structs.Vector2{x: x, y: y}), do: set_window_position(x, y)

  @doc """
  Set monitor for the current window
  """
  @spec set_window_monitor(integer) :: {:ok}
  defdelegate set_window_monitor(monitor), to: @loader

  @doc """
  Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
  """
  @spec set_window_min_size(integer, integer) :: {:ok}
  defdelegate set_window_min_size(width, height), to: @loader

  @doc """
  Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
  """
  @spec set_window_max_size(integer, integer) :: {:ok}
  defdelegate set_window_max_size(width, height), to: @loader

  @doc """
  Set window dimensions
  """
  @spec set_window_size(integer, integer) :: {:ok}
  defdelegate set_window_size(width, height), to: @loader

  @doc """
  Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
  """
  @spec set_window_opacity(float) :: {:ok}
  defdelegate set_window_opacity(opacity), to: @loader

  @doc """
  Set window focused (only PLATFORM_DESKTOP)
  """
  @spec set_window_focused() :: {:ok}
  defdelegate set_window_focused(), to: @loader

  @doc """
  Get native window handle
  """
  @spec get_window_handle() :: {:ok, term}
  defdelegate get_window_handle(), to: @loader

  @doc """
  Get current screen width
  """
  @spec get_screen_width() :: {:ok, integer}
  defdelegate get_screen_width(), to: @loader

  @doc """
  Get current screen height
  """
  @spec get_screen_height() :: {:ok, integer}
  defdelegate get_screen_height(), to: @loader

  @doc """
  Get current render width (it considers HiDPI)
  """
  @spec get_render_width() :: {:ok, integer}
  defdelegate get_render_width(), to: @loader

  @doc """
  Get current render height (it considers HiDPI)
  """
  @spec get_render_height() :: {:ok, integer}
  defdelegate get_render_height(), to: @loader

  @doc """
  Get number of connected monitors
  """
  @spec get_monitor_count() :: {:ok, integer}
  defdelegate get_monitor_count(), to: @loader

  @doc """
  Get current connected monitor
  """
  @spec get_current_monitor() :: {:ok, integer}
  defdelegate get_current_monitor(), to: @loader

  @doc """
  Get specified monitor position
  """
  @spec get_monitor_position(integer) :: {:ok, Vector2}
  defdelegate get_monitor_position(monitor), to: @loader

  @doc """
  Get specified monitor width (current video mode used by monitor)
  """
  @spec get_monitor_width(integer) :: {:ok, integer}
  defdelegate get_monitor_width(monitor), to: @loader

  @doc """
  Get specified monitor height (current video mode used by monitor)
  """
  @spec get_monitor_height(integer) :: {:ok, integer}
  defdelegate get_monitor_height(monitor), to: @loader

  @doc """
  Get specified monitor physical width in millimetres
  """
  @spec get_monitor_physical_width(integer) :: {:ok, integer}
  defdelegate get_monitor_physical_width(monitor), to: @loader

  @doc """
  Get specified monitor physical height in millimetres
  """
  @spec get_monitor_physical_height(integer) :: {:ok, integer}
  defdelegate get_monitor_physical_height(monitor), to: @loader

  @doc """
  Get specified monitor refresh rate
  """
  @spec get_monitor_refresh_rate(integer) :: {:ok, integer}
  defdelegate get_monitor_refresh_rate(monitor), to: @loader

  @doc """
  Get window position XY on monitor
  """
  @spec get_window_position() :: {:ok, Vector2}
  defdelegate get_window_position(), to: @loader

  @doc """
  Get window scale DPI factor
  """
  @spec get_window_scale_dpi() :: {:ok,Vector2}
  defdelegate get_window_scale_dpi(), to: @loader

  @doc """
  Get the human-readable, UTF-8 encoded name of the specified monitor
  """
  @spec get_monitor_name(integer) :: {:ok, binary}
  defdelegate get_monitor_name(monitor), to: @loader

  @doc """
  Set clipboard text content
  """
  @spec set_clipboard_text(binary) :: {:ok}
  defdelegate set_clipboard_text(text), to: @loader

  @doc """
  Get clipboard text content
  """
  @spec get_clipboard_text() :: {:ok, binary}
  defdelegate get_clipboard_text(), to: @loader

  @doc """
  Enable waiting for events on EndDrawing(), no automatic event polling
  """
  @spec enable_event_waiting() :: {:ok}
  defdelegate enable_event_waiting(), to: @loader

  @doc """
  Disable waiting for events on EndDrawing(), automatic events polling
  """
  @spec disable_event_waiting() :: {:ok}
  defdelegate disable_event_waiting(), to: @loader

end
