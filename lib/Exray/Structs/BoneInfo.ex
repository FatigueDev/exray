defmodule Exray.Structs.BoneInfo do
  @moduledoc """
  BoneInfo TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :name, [non_neg_integer], default: []
    field :parent, integer, default: 0
  end
end
