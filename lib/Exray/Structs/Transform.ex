defmodule Exray.Structs.Transform do
  @moduledoc """
  Transform TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :translation, Vector3.t()
    field :rotation, Quaternion.t()
    field :scale, Vector3.t()
  end
end
