defmodule Exray.Structs.Font do
  @moduledoc """
  Font TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Texture
  alias Exray.Structs.Rectangle
  alias Exray.Structs.GlyphInfo

  typedstruct enforce: true do
    field :baseSize, integer, default: 0
    field :glyphCount, integer, default: 0
    field :glyphPadding, integer, default: 0
    field :texture, Texture.t()
    field :recs, [Rectangle.t()], default: []
    field :glyphs, [GlyphInfo.t()], default: []
  end
end
