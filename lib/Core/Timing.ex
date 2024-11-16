defmodule Exray.Core.Timing do
  @moduledoc """
  Handle frame timing (Set FPS, get Delta Time (get_frame_time))
  """

  @doc """
  Set target FPS (maximum)
  """
  @spec set_target_fps(fps :: integer) :: :ok
  defdelegate set_target_fps(fps), to: Exray.Core.Timing.Loader

  @doc """
  Get time in seconds for last frame drawn (delta time)
  """
  @spec get_frame_time() :: delta_time :: float
  defdelegate get_frame_time(), to: Exray.Core.Timing.Loader

  @doc """
  Get elapsed time in seconds since InitWindow()
  """
  @spec get_time() :: elapsed_time :: float
  defdelegate get_time(), to: Exray.Core.Timing.Loader

  @doc """
  Get current FPS
  """
  @spec get_fps() :: fps :: integer
  defdelegate get_fps(), to: Exray.Core.Timing.Loader
end
