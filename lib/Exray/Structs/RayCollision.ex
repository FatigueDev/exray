defmodule Exray.Structs.RayCollision do
  @moduledoc """
  RayCollision TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Vector3

  typedstruct enforce: true do
    field :hit, boolean, default: false
    field :distance, float, default: 0.0
    field :point, Vector3.t()
    field :normal, Vector3.t()
  end
end
