defmodule Exray.Textures.Image.Generation do
  @moduledoc """
  Image generation functions like creating gradients, noise maps, raw color
  """

  alias Exray.Structs.Image
  alias Exray.Structs.Color

  @doc """
  Generate image: plain color
  """
  @spec gen_image_color(width :: integer, height :: integer, color :: Color.t()) ::
          image :: Image.t()
  defdelegate gen_image_color(width, height, color), to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
  """
  @spec gen_image_gradient_linear(
          width :: integer,
          height :: integer,
          direction :: integer,
          start :: Color.t(),
          finish :: Color.t()
        ) :: image :: Image.t()
  defdelegate gen_image_gradient_linear(width, height, direction, start, finish),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: radial gradient
  """
  @spec gen_image_gradient_radial(
          width :: integer,
          height :: integer,
          density :: float,
          inner :: Color.t(),
          outer :: Color.t()
        ) :: image :: Image.t()
  defdelegate gen_image_gradient_radial(width, height, density, inner, outer),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: square gradient
  """
  @spec gen_image_gradient_square(
          width :: integer,
          height :: integer,
          density :: float,
          inner :: Color.t(),
          outer :: Color.t()
        ) :: image :: Image.t()
  defdelegate gen_image_gradient_square(width, height, density, inner, outer),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: checked
  """
  @spec gen_image_checked(
          width :: integer,
          height :: integer,
          checks_x :: integer,
          checks_y :: integer,
          col1 :: Color.t(),
          col2 :: Color.t()
        ) :: image :: Image.t()
  defdelegate gen_image_checked(width, height, checks_x, checks_y, col1, col2),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: white noise
  """
  @spec gen_image_white_noise(width :: integer, height :: integer, factor :: float) ::
          image :: Image.t()
  defdelegate gen_image_white_noise(width, height, factor),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: perlin noise
  """
  @spec gen_image_perlin_noise(
          width :: integer,
          height :: integer,
          offset_x :: integer,
          offset_y :: integer,
          scale :: float
        ) :: image :: Image.t()
  defdelegate gen_image_perlin_noise(width, height, offset_x, offset_y, scale),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: cellular algorithm, bigger tileSize means bigger cells
  """
  @spec gen_image_cellular(width :: integer, height :: integer, tile_size :: integer) ::
          image :: Image.t()
  defdelegate gen_image_cellular(width, height, tile_size),
    to: Exray.Textures.Image.Generation.Loader

  @doc """
  Generate image: grayscale image from text data
  """
  @spec gen_image_text(width :: integer, height :: integer, text :: binary) :: image :: Image.t()
  defdelegate gen_image_text(width, height, text), to: Exray.Textures.Image.Generation.Loader
end
