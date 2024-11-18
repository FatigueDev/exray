defmodule Exray.Structs.RenderTexture do
  @moduledoc """
  RenderTexture TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Texture

  typedstruct enforce: true do
    field :id, non_neg_integer, default: 0
    field :texture, Texture.t()
    field :depth, Texture.t()
  end
end
