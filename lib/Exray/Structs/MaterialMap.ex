defmodule Exray.Structs.MaterialMap do
  @moduledoc """
  MaterialMap TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Texture
  alias Exray.Structs.Color

  typedstruct enforce: true do
    field :texture, Texture.t()
    field :color, Color.t()
    field :value, float, default: 0.0
  end
end
