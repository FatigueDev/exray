defmodule Exray.Structs.Model do
  @moduledoc """
  Model TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Matrix
  alias Exray.Structs.Mesh
  alias Exray.Structs.Material
  alias Exray.Structs.BoneInfo
  alias Exray.Structs.Transform

  typedstruct enforce: true do
    field :transform, Matrix.t()
    field :meshCount, integer, default: 0
    field :materialCount, integer, default: 0
    field :meshes, [Mesh.t()], default: []
    field :materials, [Material.t()], default: []
    field :meshMaterial, [integer], default: []
    field :boneCount, integer, default: 0
    field :bones, [BoneInfo.t()], default: []
    field :bindPose, [Transform.t()], default: []
  end
end
