defmodule Exray.Structs.Shader do
  @moduledoc """
  Shader TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :id, non_neg_integer, default: 0
    field :locs, [integer], default: []
  end
end
