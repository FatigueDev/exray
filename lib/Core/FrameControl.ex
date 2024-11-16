defmodule Exray.Core.FrameControl do
  @moduledoc """
  *Not yet supported;* calling these with the precompiled Raylib binaries won't work, because those do not define #SUPPORT_CUSTOM_FRAME_CONTROL.\
  Poll input events, manage frame timing and swap render buffers.\
  Requires SUPPORT_CUSTOM_FRAME_CONTROL to be defined, which will disable these\
  being called automatically by Exray.Core.Drawing end calls.
  """

  @doc """
  Swap back buffer with front buffer (screen drawing)
  """
  @spec swap_screen_buffer() :: :ok
  defdelegate swap_screen_buffer(), to: Exray.Core.FrameControl.Loader

  @doc """
  Register all input events
  """
  @spec poll_input_events() :: :ok
  defdelegate poll_input_events(), to: Exray.Core.FrameControl.Loader

  @doc """
  Wait for some time (halt program execution)
  """
  @spec wait_time(seconds :: float) :: :ok
  defdelegate wait_time(seconds), to: Exray.Core.FrameControl.Loader
end
