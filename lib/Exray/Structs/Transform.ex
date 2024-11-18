defmodule Exray.Structs.Transform do
  @moduledoc """
  Transform TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Vector3
  alias Exray.Structs.Vector4

  typedstruct enforce: true do
    field :translation, Vector3.t()
    field :rotation, Vector4.t()
    field :scale, Vector3.t()
  end
end
