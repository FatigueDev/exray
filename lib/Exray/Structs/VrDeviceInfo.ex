defmodule Exray.Structs.VrDeviceInfo do
  @moduledoc """
  VrDeviceInfo
  """
  use TypedStruct

  typedstruct enforce: true do
    field :hResolution, integer, default: 0
    field :vResolution, integer, default: 0
    field :hScreenSize, float, default: 0.0
    field :vScreenSize, float, default: 0.0
    field :vScreenCenter, float, default: 0.0
    field :eyeToScreenDistance, float, default: 0.0
    field :lensSeparationDistance, float, default: 0.0
    field :interpupillaryDistance, float, default: 0.0

    # [4]
    field :lensDistortionValues, [float], default: []
    # [4]
    field :chromaAbCorrection, [float], default: []
  end
end
