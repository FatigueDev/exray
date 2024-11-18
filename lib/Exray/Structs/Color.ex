defmodule Exray.Structs.Color do
  @moduledoc "
  Color TypedStruct
  "
  use TypedStruct

  typedstruct enforce: true do
    # If we don't give it anything, make it white.
    field :r, non_neg_integer, default: 255
    field :g, non_neg_integer, default: 255
    field :b, non_neg_integer, default: 255
    field :a, non_neg_integer, default: 255
  end
end
