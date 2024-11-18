defmodule Exray.Structs.BoundingBox do
  @moduledoc """
  BoundingBox TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :min, Vector3.t()
    field :max, Vector3.t()
  end
end
