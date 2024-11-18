defmodule Exray.Structs.Vector4 do
  @moduledoc """
  Vector4 TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
    field :z, float, default: 0.0
    field :w, float, default: 0.0
  end

  # alias Vector4, as: Quaternion
end
