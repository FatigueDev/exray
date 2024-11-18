defmodule Exray.Text.Loading do
  @moduledoc """
  Handles the loading and unloading of fonts and glyphs. !! Load fonts AFTER Exray.Core.Window.init_window/3
  """

  alias Exray.Structs.Font
  alias Exray.Structs.GlyphInfo
  alias Exray.Structs.Image
  alias Exray.Structs.Color
  alias Exray.Structs.Rectangle

  @doc """
  Get the default Font
  """
  @spec get_font_default() :: font :: Font.t()
  defdelegate get_font_default(), to: Exray.Text.Loading.Loader

  @doc """
  Load font from file into GPU memory (VRAM)
  """
  @spec load_font(file_name :: binary) :: font :: Font.t()
  defdelegate load_font(file_name), to: Exray.Text.Loading.Loader

  @doc """
  Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set
  """
  @spec load_font_ex(file_name :: binary, font_size :: integer, codepoints :: [integer]) ::
          font :: Font.t()
  defdelegate load_font_ex(file_name, font_size, codepoints), to: Exray.Text.Loading.Loader

  @doc """
  Load font from Image (XNA style)
  """
  @spec load_font_from_image(image :: Image.t(), color_key :: Color.t(), first_char :: integer) ::
          font :: Font.t()
  defdelegate load_font_from_image(image, color_key, first_char), to: Exray.Text.Loading.Loader

  @doc """
  Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
  """
  @spec load_font_from_memory(
          file_type :: binary,
          file_data :: binary,
          data_size :: integer,
          font_size :: integer,
          codepoints :: [integer]
        ) :: font :: Font.t()
  defdelegate load_font_from_memory(file_type, file_Data, data_size, font_size, codepoints),
    to: Exray.Text.Loading.Loader

  @doc """
  Check if a font is ready
  """
  @spec font_is_ready?(font :: Font.t()) :: font_is_ready :: boolean
  defdelegate font_is_ready?(font), to: Exray.Text.Loading.Loader, as: :font_is_ready

  @doc """
  Load font data for further use
  """
  @spec load_font_data(
          file_data :: binary,
          data_size :: integer,
          font_size :: integer,
          codepoints :: [integer],
          type :: integer
        ) :: font_data :: [GlyphInfo.t()]
  defdelegate load_font_data(file_data, data_size, font_size, codepoints, type),
    to: Exray.Text.Loading.Loader

  @doc """
  Generate image font atlas using chars info
  """
  @spec gen_image_font_atlas(
          glyphs :: [GlyphInfo.t()],
          glyph_recs :: [Rectangle.t()],
          font_size :: integer,
          padding :: integer,
          pack_method :: integer
        ) :: image_font_atlas :: Image.t()
  defdelegate gen_image_font_atlas(glyphs, glyph_recs, font_size, padding, pack_method),
    to: Exray.Text.Loading.Loader

  @doc """
  Unload font chars info data (RAM)
  """
  @spec unload_font_data(glyphs :: [GlyphInfo.t()]) :: :ok
  defdelegate unload_font_data(glyphs), to: Exray.Text.Loading.Loader

  @doc """
  Unload font from GPU memory (VRAM)
  """
  @spec unload_font(font :: Font.t()) :: :ok
  defdelegate unload_font(font), to: Exray.Text.Loading.Loader

  @doc """
  Export font as code file, returns true on success
  """
  @spec export_font_as_code(font :: Font.t(), file_name :: binary) :: success :: boolean
  defdelegate export_font_as_code(font, file_name), to: Exray.Text.Loading.Loader
end
