defmodule Exray.Structs.Matrix do
  @moduledoc """
  Matrix TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :m0, float, default: 0.0
    field :m4, float, default: 0.0
    field :m8, float, default: 0.0
    field :m12, float, default: 0.0
    field :m1, float, default: 0.0
    field :m5, float, default: 0.0
    field :m9, float, default: 0.0
    field :m13, float, default: 0.0
    field :m2, float, default: 0.0
    field :m6, float, default: 0.0
    field :m10, float, default: 0.0
    field :m14, float, default: 0.0
    field :m3, float, default: 0.0
    field :m7, float, default: 0.0
    field :m11, float, default: 0.0
    field :m15, float, default: 0.0
  end
end
