defmodule Exray.Textures.Texture.Drawing do
  @moduledoc """
  Texture drawing functionality.

  Call between `Exray.Core.Drawing.begin_mode_2d()` and `Exray.Core.Drawing.end_mode_2d()` ...

  ... Which should be called between `Exray.Core.Drawing.begin_drawing()` and `Exray.Core.Drawing.end_drawing()`
  """

  alias Exray.Structs.NPatchInfo
  alias Exray.Structs.Vector2
  alias Exray.Structs.Rectangle
  alias Exray.Structs.Color
  alias Exray.Structs.Texture

  @doc """
  Draw a Texture2D
  """
  @spec draw_texture(
          texture :: Texture.t(),
          pos_x :: integer,
          pos_y :: integer,
          tint :: Color.t()
        ) ::
          :ok
  defdelegate draw_texture(texture, pos_x, pos_y, tint),
    to: Exray.Textures.Texture.Drawing.Loader

  @doc """
  Draw a Texture2D with position defined as Vector2
  """
  @spec draw_texture_v(texture :: Texture.t(), position :: Vector2.t(), tint :: Color.t()) :: :ok
  defdelegate draw_texture_v(texture, position, tint), to: Exray.Textures.Texture.Drawing.Loader

  @doc """
  Draw a Texture2D with extended parameters
  """
  @spec draw_texture_ex(
          texture :: Texture.t(),
          position :: Vector2.t(),
          rotation :: float,
          scale :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_texture_ex(texture, position, rotation, scale, tint),
    to: Exray.Textures.Texture.Drawing.Loader

  @doc """
  Draw a part of a texture defined by a rectangle
  """
  @spec draw_texture_rec(
          texture :: Texture.t(),
          source :: Rectangle.t(),
          position :: Vector2.t(),
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_texture_rec(texture, source, position, tint),
    to: Exray.Textures.Texture.Drawing.Loader

  @doc """
  Draw a part of a texture defined by a rectangle with 'pro' parameters
  """
  @spec draw_texture_pro(
          texture :: Texture.t(),
          source :: Rectangle.t(),
          dest :: Rectangle.t(),
          origin :: Vector2.t(),
          rotation :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_texture_pro(texture, source, dest, origin, rotation, tint),
    to: Exray.Textures.Texture.Drawing.Loader

  @doc """
  Draws a texture (or part of it) that stretches or shrinks nicely
  """
  @spec draw_texture_n_patch(
          texture :: Texture.t(),
          n_patch_info :: NPatchInfo.t(),
          dest :: Rectangle.t(),
          origin :: Vector2.t(),
          rotation :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_texture_n_patch(texture, n_patch_info, dest, origin, rotation, tint),
    to: Exray.Textures.Texture.Drawing.Loader
end
