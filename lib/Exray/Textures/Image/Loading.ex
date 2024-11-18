defmodule Exray.Textures.Image.Loading do
  @moduledoc """
  Handles the loading, conversion and export of Image types
  """

  alias Exray.Structs.Image
  alias Exray.Structs.Texture

  @doc """
  Load image from RAW file data
  """
  @spec load_image_raw(
          file_name :: binary,
          width :: integer,
          height :: integer,
          format :: integer,
          header_size :: integer
        ) :: image :: Image.t()
  defdelegate load_image_raw(file_name, width, height, format, header_size),
    to: Exray.Textures.Image.Loading.Loader

  @doc """
  Load image from SVG file data or string with specified size
  """
  @spec load_image_svg(file_name_or_string :: binary, width :: integer, height :: integer) ::
          image :: Image.t()
  defdelegate load_image_svg(file_name_or_string, width, height),
    to: Exray.Textures.Image.Loading.Loader

  @doc """
  Load image sequence from file (frames appended to image.data)
  """
  @spec load_image_anim(file_name :: binary, frames :: [integer]) :: image :: Image.t()
  defdelegate load_image_anim(file_name, frames), to: Exray.Textures.Image.Loading.Loader

  @doc """
  Load image from memory buffer, fileType refers to extension: i.e. '.png'
  """
  @spec load_image_from_memory(file_type :: binary, file_data :: binary, data_size :: integer) ::
          image :: Image.t()
  defdelegate load_image_from_memory(file_type, file_data, data_size),
    to: Exray.Textures.Image.Loading.Loader

  @doc """
  Load image from GPU texture data
  """
  @spec load_image_from_texture(texture :: Texture.t()) :: image :: Image.t()
  defdelegate load_image_from_texture(texture), to: Exray.Textures.Image.Loading.Loader

  @doc """
  Load image from screen buffer and (screenshot)
  """
  @spec load_image_from_screen() :: image :: Image.t()
  defdelegate load_image_from_screen(), to: Exray.Textures.Image.Loading.Loader

  @doc """
  Check if an image is ready
  """
  @spec image_is_ready?(image :: Image.t()) :: image_is_ready :: boolean
  defdelegate image_is_ready?(image), to: Exray.Textures.Image.Loading.Loader, as: :image_is_ready

  @doc """
  Unload image from CPU memory (RAM)
  """
  @spec unload_image(image :: Image.t()) :: :ok
  defdelegate unload_image(image), to: Exray.Textures.Image.Loading.Loader

  @doc """
  Export image data to file, returns true on success
  """
  @spec export_image(image :: Image.t(), file_name :: binary) :: exported :: boolean
  defdelegate export_image(image, file_name), to: Exray.Textures.Image.Loading.Loader

  @doc """
  Export image to memory buffer
  """
  @spec export_image_to_memory(image :: Image.t(), file_type :: binary, file_size :: [integer]) ::
          buffer :: binary
  defdelegate export_image_to_memory(image, file_type, file_size),
    to: Exray.Textures.Image.Loading.Loader

  @doc """
  Export image as code file defining an array of bytes, returns true on success
  """
  @spec export_image_as_code(image :: Image.t(), file_name :: binary) :: exported :: boolean
  defdelegate export_image_as_code(image, file_name), to: Exray.Textures.Image.Loading.Loader
end
