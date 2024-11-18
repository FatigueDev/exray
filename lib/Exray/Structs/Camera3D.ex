defmodule Exray.Structs.Camera3D do
  @moduledoc """
  Camera3D TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :position, Vector3.t()
    field :target, Vector3.t()
    field :up, Vector3.t()
    field :fovy, float, default: 90.0

    # 0 = CAMERA_PERSPECTIVE, 1 = CAMERA_ORTHOGRAPHIC
    field :projection, integer, default: 0
  end
end
