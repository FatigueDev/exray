defmodule Exray.Textures.Texture.Loading do
  @moduledoc """
  Texture loading functionality
  """
  alias Exray.Structs.RenderTexture
  alias Exray.Structs.Texture
  alias Exray.Structs.Image

  @doc """
  Load texture from file into GPU memory (VRAM)
  """
  @spec load_texture(file_name :: binary) :: texture :: Texture.t()
  defdelegate load_texture(file_name), to: Exray.Textures.Texture.Loading.Loader

  @doc """
  Load texture from image data
  """
  @spec load_texture_from_image(image :: Image.t()) :: texture :: Texture.t()
  defdelegate load_texture_from_image(image), to: Exray.Textures.Texture.Loading.Loader

  @doc """
  Load cubemap from image, multiple image cubemap layouts supported
  """
  @spec load_texture_cubemap(image :: Image.t(), layout :: integer) :: texture :: Texture.t()
  defdelegate load_texture_cubemap(image, layout), to: Exray.Textures.Texture.Loading.Loader

  @doc """
  Load texture for rendering (framebuffer)
  """
  @spec load_render_texture(width :: integer, height :: integer) :: texture :: RenderTexture.t()
  defdelegate load_render_texture(width, height), to: Exray.Textures.Texture.Loading.Loader

  @doc """
  Check if a texture is valid (loaded in GPU)
  """
  @spec texture_is_ready?(texture :: Texture.t()) :: is_valid :: boolean
  defdelegate texture_is_ready?(texture),
    to: Exray.Textures.Texture.Loading.Loader,
    as: :texture_is_ready

  @doc """
  Unload texture from GPU memory (VRAM)
  """
  @spec unload_texture(texture :: Texture.t()) :: :ok
  defdelegate unload_texture(texture), to: Exray.Textures.Texture.Loading.Loader

  @doc """
  Check if a render texture is valid (loaded in GPU)
  """
  @spec render_texture_is_ready?(target :: RenderTexture.t()) :: is_valid :: boolean
  defdelegate render_texture_is_ready?(target),
    to: Exray.Textures.Texture.Loading.Loader,
    as: :render_texture_is_ready

  @doc """
  Unload render texture from GPU memory (VRAM)
  """
  @spec unload_render_texture(target :: RenderTexture.t()) :: :ok
  defdelegate unload_render_texture(target), to: Exray.Textures.Texture.Loading.Loader

  # @doc """
  # Update GPU texture with new data
  # """

  # @spec update_texture(texture :: Texture, pixels :: [reference]) :: :ok
  # defdelegate update_texture(texture, pixels), to: Exray.Textures.Texture.Loading.Loader

  # @doc """
  # Update GPU texture rectangle with new data
  # """
  # @spec update_texture_rec(texture :: exTexture, rec :: exRectangle, pixels :: [state]) :: :ok
  # defdelegate update_texture_rec(), to: Exray.Textures.Texture.Loading.Loader
end
