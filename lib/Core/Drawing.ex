defmodule Exray.Core.Drawing do
  @moduledoc """
  Begin Draw / End Draw (2D, 3D, etc) calls. *REQUIRED* to process input events. Can be empty, though :)
  """

  alias Exray.Structs.Color
  alias Exray.Structs.Camera2D
  alias Exray.Structs.Camera3D
  alias Exray.Structs.RenderTexture
  alias Exray.Structs.Shader

  @doc """
  Set background color (framebuffer clear color)
  """
  @spec clear_background(color :: Color.t()) :: :ok
  defdelegate clear_background(color), to: Exray.Core.Drawing.Loader

  @doc """
  Setup canvas (framebuffer) to start drawing
  """
  @spec begin_drawing() :: :ok
  defdelegate begin_drawing(), to: Exray.Core.Drawing.Loader

  @doc """
  End canvas drawing and swap buffers (double buffering)
  """
  @spec end_drawing() :: :ok
  defdelegate end_drawing(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin 2D mode with custom camera (2D)
  """
  @spec begin_mode_2d(camera :: Camera2D.t()) :: :ok
  defdelegate begin_mode_2d(camera), to: Exray.Core.Drawing.Loader

  @doc """
  Ends 2D mode with custom camera
  """
  @spec end_mode_2d() :: :ok
  defdelegate end_mode_2d(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin 3D mode with custom camera (3D)
  """
  @spec begin_mode_3d(camera :: Camera3D.t()) :: :ok
  defdelegate begin_mode_3d(camera), to: Exray.Core.Drawing.Loader

  @doc """
  Ends 3D mode and returns to default 2D orthographic mode
  """
  @spec end_mode_3d() :: :ok
  defdelegate end_mode_3d(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin drawing to render texture
  """
  @spec begin_texture_mode(target :: RenderTexture.t()) :: :ok
  defdelegate begin_texture_mode(target), to: Exray.Core.Drawing.Loader

  @doc """
  Ends drawing to render texture
  """
  @spec end_texture_mode() :: :ok
  defdelegate end_texture_mode(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin custom shader drawing
  """
  @spec begin_shader_mode(shader :: Shader.t()) :: :ok
  defdelegate begin_shader_mode(shader), to: Exray.Core.Drawing.Loader

  @doc """
  End custom shader drawing (use default shader)
  """
  @spec end_shader_mode() :: :ok
  defdelegate end_shader_mode(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin blending mode (alpha, additive, multiplied, subtract, custom)
  """
  @spec begin_blend_mode(mode :: integer) :: :ok
  defdelegate begin_blend_mode(mode), to: Exray.Core.Drawing.Loader

  @doc """
  End blending mode (reset to default: alpha blending)
  """
  @spec end_blend_mode() :: :ok
  defdelegate end_blend_mode(), to: Exray.Core.Drawing.Loader

  @doc """
  Begin scissor mode (define screen area for following drawing)
  """
  @spec begin_scissor_mode(x :: integer, y :: integer, width :: integer, height :: integer) :: :ok
  defdelegate begin_scissor_mode(x, y, width, height), to: Exray.Core.Drawing.Loader

  @doc """
  End scissor mode
  """
  @spec end_scissor_mode() :: :ok
  defdelegate end_scissor_mode(), to: Exray.Core.Drawing.Loader
end
