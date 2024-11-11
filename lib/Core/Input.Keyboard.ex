defmodule Exray.Core.Input.Keyboard do

  @loader Exray.Core.Input.Keyboard.Loader

  @doc """
  Check if a key has been pressed once
  """
  @spec is_key_pressed(integer) :: {:ok, boolean}
  defdelegate is_key_pressed(key), to: @loader

  @doc """
  Check if a key has been pressed again (Only PLATFORM_DESKTOP)
  """
  @spec is_key_pressed_repeat(integer) :: {:ok, boolean}
  defdelegate is_key_pressed_repeat(key), to: @loader

  @doc """
  Check if a key is being pressed
  """
  @spec is_key_down(integer) :: {:ok, boolean}
  defdelegate is_key_down(key), to: @loader

  @doc """
  Check if a key has been released once
  """
  @spec is_key_released(integer) :: {:ok, boolean}
  defdelegate is_key_released(key), to: @loader

  @doc """
  Check if a key is NOT being pressed
  """
  @spec is_key_up(integer) :: {:ok, boolean}
  defdelegate is_key_up(key), to: @loader

  @doc """
  Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
  """
  @spec get_key_pressed() :: {:ok, integer}
  defdelegate get_key_pressed(), to: @loader

  @doc """
  Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
  """
  @spec get_char_pressed() :: {:ok, integer}
  defdelegate get_char_pressed(), to: @loader

  @doc """
  Set a custom key to exit program (default is ESC)
  """
  @spec set_exit_key(integer) :: {:ok}
  defdelegate set_exit_key(key), to: @loader

end
