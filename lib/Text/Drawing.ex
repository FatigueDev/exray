defmodule Exray.Text.Drawing do
  @moduledoc """
  Draw text onto the window
  """

  @doc """
  Draw current FPS
  """
  @spec draw_fps(pos_x :: integer, pos_y :: integer) :: :ok
  defdelegate draw_fps(pos_x, pos_y), to: Exray.Text.Drawing.Loader

  @doc """
  Draw text (using default font)
  """
  @spec draw_text(
          text :: binary,
          pos_x :: integer,
          pos_y :: integer,
          font_size :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_text(text, pos_x, pos_y, font_size, color), to: Exray.Text.Drawing.Loader

  @doc """
  Draw text using font and additional parameters
  """
  @spec draw_text_ex(
          font :: Font.t(),
          text :: binary,
          position :: Vector2.t(),
          font_size :: float,
          spacing :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_text_ex(font, text, position, font_size, spacing, tint),
    to: Exray.Text.Drawing.Loader

  @doc """
  Draw text using Font and pro parameters (rotation)
  """
  @spec draw_text_pro(
          font :: Font.t(),
          text :: binary,
          position :: Vector2.t(),
          origin :: Vector2.t(),
          rotation :: float,
          font_size :: float,
          spacing :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_text_pro(font, text, position, origin, rotation, font_size, spacing, tint),
    to: Exray.Text.Drawing.Loader

  @doc """
  Draw one character (codepoint)
  """
  @spec draw_text_codepoint(
          font :: Font.t(),
          codepoint :: integer,
          position :: Vector2.t(),
          font_size :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_text_codepoint(font, codepoint, position, font_size, tint),
    to: Exray.Text.Drawing.Loader

  @doc """
  Draw multiple character (codepoint)
  """
  @spec draw_text_codepoints(
          font :: Font.t(),
          codepoints :: [integer],
          position :: Vector2.t(),
          font_size :: float,
          spacing :: float,
          tint :: Color.t()
        ) :: :ok
  defdelegate draw_text_codepoints(font, codepoints, position, font_size, spacing, tint),
    to: Exray.Text.Drawing.Loader
end
