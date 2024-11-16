defmodule Exray.Core.Screenspace do
  @moduledoc """
  Transform 3D positions in the world to screenspace and vice versa
  """

  alias Exray.Structs.Vector2
  alias Exray.Structs.Vector3
  alias Exray.Structs.Matrix
  alias Exray.Structs.Camera2D
  alias Exray.Structs.Camera3D
  alias Exray.Structs.Ray

  @doc """
  Get a ray trace from mouse position
  """
  @spec get_mouse_ray(mouse_position :: Vector2.t(), camera :: Camera3D.t()) ::
          mouse_ray :: Ray.t()
  defdelegate get_mouse_ray(mouse_position, camera), to: Exray.Core.Screenspace.Loader

  @doc """
  Get camera transform matrix (view matrix)
  """
  @spec get_camera_matrix(camera :: Camera3D.t()) :: camera_matrix :: Matrix.t()
  defdelegate get_camera_matrix(camera), to: Exray.Core.Screenspace.Loader

  @doc """
  Get camera 2d transform matrix
  """
  @spec get_camera_matrix_2d(camera :: Camera2D.t()) :: camera_matrix :: Matrix.t()
  defdelegate get_camera_matrix_2d(camera), to: Exray.Core.Screenspace.Loader

  @doc """
  Get the screen space position for a 3d world space position
  """
  @spec get_world_to_screen(position :: Vector3.t(), camera :: Camera3D.t()) ::
          world_to_screen :: Vector2.t()
  defdelegate get_world_to_screen(position, camera), to: Exray.Core.Screenspace.Loader

  @doc """
  Get the world space position for a 2d camera screen space position
  """
  @spec get_screen_to_world_2d(position :: Vector2.t(), camera :: Camera2D.t()) ::
          screen_to_world :: Vector2.t()
  defdelegate get_screen_to_world_2d(position, camera), to: Exray.Core.Screenspace.Loader

  @doc """
  Get size position for a 3d world space position
  """
  @spec get_world_to_screen_ex(
          position :: Vector3.t(),
          camera :: Camera3D.t(),
          width :: integer,
          height :: integer
        ) :: world_to_screen_ex :: Vector2.t()
  defdelegate get_world_to_screen_ex(position, camera, width, height),
    to: Exray.Core.Screenspace.Loader

  @doc """
  Get the screen space position for a 2d camera world space position
  """
  @spec get_world_to_screen_2d(position :: Vector2.t(), camera :: Camera2D.t()) ::
          world_to_screen_2d :: Vector2.t()
  defdelegate get_world_to_screen_2d(position, camera), to: Exray.Core.Screenspace.Loader
end
