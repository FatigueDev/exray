defmodule Exray.Structs.GlyphInfo do
  @moduledoc """
  GlyphInfo TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :value, integer, default: 0
    field :offsetX, integer, default: 0
    field :offsetY, integer, default: 0
    field :advanceX, integer, default: 0
    field :image, Image.t()
  end
end
