defmodule Exray.Core.Drawing do

  @moduledoc """
  Begin Draw / End Draw (2D, 3D, etc) calls. *REQUIRED* to process input events. Can be empty, though :)
  """

  alias Exray.Structs.Color
  alias Exray.Structs.Camera2D
  alias Exray.Structs.Camera3D
  alias Exray.Structs.RenderTexture
  alias Exray.Structs.Shader

  @loader Exray.Core.Drawing.Loader

  @doc """
  Set background color (framebuffer clear color)
  """
  @spec clear_background(Color) :: {:ok}
  defdelegate clear_background(color), to: @loader

  @doc """
  Setup canvas (framebuffer) to start drawing
  """
  @spec begin_drawing() :: {:ok}
  defdelegate begin_drawing(), to: @loader

  @doc """
  End canvas drawing and swap buffers (double buffering)
  """
  @spec end_drawing() :: {:ok}
  defdelegate end_drawing(), to: @loader

  @doc """
  Begin 2D mode with custom camera (2D)
  """
  @spec begin_mode_2d(Camera2D) :: {:ok}
  defdelegate begin_mode_2d(camera), to: @loader

  @doc """
  Ends 2D mode with custom camera
  """
  @spec end_mode_2d() :: {:ok}
  defdelegate end_mode_2d(), to: @loader

  @doc """
  Begin 3D mode with custom camera (3D)
  """
  @spec begin_mode_3d(Camera3D) :: {:ok}
  defdelegate begin_mode_3d(camera), to: @loader

  @doc """
  Ends 3D mode and returns to default 2D orthographic mode
  """
  @spec end_mode_3d() :: {:ok}
  defdelegate end_mode_3d(), to: @loader

  @doc """
  Begin drawing to render texture
  """
  @spec begin_texture_mode(RenderTexture) :: {:ok}
  defdelegate begin_texture_mode(target), to: @loader

  @doc """
  Ends drawing to render texture
  """
  @spec end_texture_mode() :: {:ok}
  defdelegate end_texture_mode(), to: @loader

  @doc """
  Begin custom shader drawing
  """
  @spec begin_shader_mode(Shader) :: {:ok}
  defdelegate begin_shader_mode(shader), to: @loader

  @doc """
  End custom shader drawing (use default shader)
  """
  @spec end_shader_mode() :: {:ok}
  defdelegate end_shader_mode(), to: @loader

  @doc """
  Begin blending mode (alpha, additive, multiplied, subtract, custom)
  """
  @spec begin_blend_mode(integer) :: {:ok}
  defdelegate begin_blend_mode(mode), to: @loader

  @doc """
  End blending mode (reset to default: alpha blending)
  """
  @spec end_blend_mode() :: {:ok}
  defdelegate end_blend_mode(), to: @loader

  @doc """
  Begin scissor mode (define screen area for following drawing)
  """
  @spec begin_scissor_mode(integer, integer, integer, integer) :: {:ok}
  defdelegate begin_scissor_mode(x, y, width, height), to: @loader

  @doc """
  End scissor mode
  """
  @spec end_scissor_mode() :: {:ok}
  defdelegate end_scissor_mode(), to: @loader

end
