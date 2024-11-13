defmodule Exray.Core.Input.Keyboard do

  @moduledoc """
  Input control for your keyboard
  """

  @loader Exray.Core.Input.Keyboard.Loader

  @doc """
  Check if a key has been pressed once
  """
  @spec key_is_pressed?(key :: integer) :: key_pressed :: boolean
  defdelegate key_is_pressed?(key), to: @loader, as: :key_is_pressed

  @doc """
  Check if a key has been pressed again (Only PLATFORM_DESKTOP)
  """
  @spec key_is_pressed_repeat?(key :: integer) :: key_pressed_repeat :: boolean
  defdelegate key_is_pressed_repeat?(key), to: @loader, as: :key_is_pressed_repeat

  @doc """
  Check if a key is being pressed
  """
  @spec key_is_down?(key :: integer) :: key_down :: boolean
  defdelegate key_is_down?(key), to: @loader, as: :key_is_down

  @doc """
  Check if a key has been released once
  """
  @spec key_is_released?(key :: integer) :: key_released :: boolean
  defdelegate key_is_released?(key), to: @loader, as: :key_is_released

  @doc """
  Check if a key is NOT being pressed
  """
  @spec key_is_up?(key :: integer) :: key_up :: boolean
  defdelegate key_is_up?(key), to: @loader, as: :key_is_up

  @doc """
  Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
  """
  @spec get_key_pressed() :: key_code :: integer
  defdelegate get_key_pressed(), to: @loader

  @doc """
  Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
  """
  @spec get_char_pressed() :: key_char :: integer
  defdelegate get_char_pressed(), to: @loader

  @doc """
  Set a custom key to exit program (default is ESC)
  """
  @spec set_exit_key(key :: integer) :: :ok
  defdelegate set_exit_key(key), to: @loader

end
