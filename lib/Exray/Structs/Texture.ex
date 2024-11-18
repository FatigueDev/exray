defmodule Exray.Structs.Texture do
  @moduledoc """
  Texture TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :id, non_neg_integer, default: 0
    field :width, integer, default: 0
    field :height, integer, default: 0
    field :mipmaps, integer, default: 0
    field :format, integer, default: 0
  end
end
