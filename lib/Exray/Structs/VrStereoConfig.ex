defmodule Exray.Structs.VrStereoConfig do
  @moduledoc """
  VrStereoConfig
  """
  use TypedStruct

  alias Exray.Structs.Matrix

  typedstruct enforce: true do
    # [2]
    field :projection, [Matrix.t()], default: []
    # [2]
    field :viewOffset, [Matrix.t()], default: []
    # [2]
    field :leftLensCenter, [float], default: [0.0, 0.0]
    # [2]
    field :rightLensCenter, [float], default: [0.0, 0.0]
    # [2]
    field :leftScreenCenter, [float], default: [0.0, 0.0]
    # [2]
    field :rightScreenCenter, [float], default: [0.0, 0.0]
    # [2]
    field :scale, [float], default: [1.0, 1.0]
    # [2]
    field :scaleIn, [float], default: [0.0, 0.0]
  end
end
