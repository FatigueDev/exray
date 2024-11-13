defmodule Exray.Core.Input.Mouse do

  @moduledoc """
  Input control for your mouse
  """

  @loader Exray.Core.Input.Mouse.Loader

  alias Exray.Structs.Vector2

  @doc """
  Check if a mouse button has been pressed once
  """
  @spec mouse_button_is_pressed?(button :: integer) :: is_pressed :: boolean
  defdelegate mouse_button_is_pressed?(button), to: @loader, as: :mouse_button_is_pressed

  @doc """
  Check if a mouse button is being pressed
  """
  @spec mouse_button_is_down?(button :: integer) :: is_down :: boolean
  defdelegate mouse_button_is_down?(button), to: @loader, as: :mouse_button_is_down

  @doc """
  Check if a mouse button has been released once
  """
  @spec mouse_button_is_released?(button :: integer) :: is_released :: boolean
  defdelegate mouse_button_is_released?(button), to: @loader, as: :mouse_button_is_released

  @doc """
  Check if a mouse button is NOT being pressed
  """
  @spec mouse_button_is_up?(button :: integer) :: is_up :: boolean
  defdelegate mouse_button_is_up?(button), to: @loader, as: :mouse_button_is_up

  @doc """
  Get mouse position X
  """
  @spec get_mouse_x() :: mouse_x :: integer
  defdelegate get_mouse_x(), to: @loader

  @doc """
  Get mouse position Y
  """
  @spec get_mouse_y() :: mouse_y :: integer
  defdelegate get_mouse_y(), to: @loader

  @doc """
  Get mouse position XY
  """
  @spec get_mouse_position() :: mouse_position :: Vector2
  defdelegate get_mouse_position(), to: @loader

  @doc """
  Get mouse delta between frames
  """
  @spec get_mouse_delta() :: mouse_delta :: Vector2
  defdelegate get_mouse_delta(), to: @loader

  @doc """
  Set mouse position XY
  """
  @spec set_mouse_position(x :: integer, y :: integer) :: :ok
  defdelegate set_mouse_position(x, y), to: @loader

  @doc """
  Set mouse offset
  """
  @spec set_mouse_offset(offset_x :: integer, offset_y :: integer) :: :ok
  defdelegate set_mouse_offset(offset_x, offset_y), to: @loader

  @doc """
  Set mouse scaling
  """
  @spec set_mouse_scale(scale_x :: float, scale_y :: float) :: :ok
  defdelegate set_mouse_scale(scale_x, scale_y), to: @loader

  @doc """
  Get mouse wheel movement for X or Y, whichever is larger
  """
  @spec get_mouse_wheel_move() :: wheel_movement :: float
  defdelegate get_mouse_wheel_move(), to: @loader

  @doc """
  Get mouse wheel movement for both X and Y
  """
  @spec get_mouse_wheel_move_v() :: wheel_movement :: Vector2
  defdelegate get_mouse_wheel_move_v(), to: @loader

  @doc """
  Set mouse cursor
  """
  @spec set_mouse_cursor(cursor :: integer) :: :ok
  defdelegate set_mouse_cursor(cursor), to: @loader

end
