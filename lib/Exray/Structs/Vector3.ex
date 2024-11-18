defmodule Exray.Structs.Vector3 do
  @moduledoc """
  Vector3 TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
    field :z, float, default: 0.0
  end
end
