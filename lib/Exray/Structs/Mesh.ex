defmodule Exray.Structs.Mesh do
  @moduledoc """
  Mesh TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :vertextCount, integer, default: 0
    field :triangleCount, integer, default: 0

    field :vertices, [float], default: []
    field :texcoords, [float], default: []
    field :texcoords2, [float], default: []
    field :normals, [float], default: []
    field :tangents, [float], default: []
    field :colors, String.t(), default: ""
    field :indices, [integer], default: []

    field :animVertices, [float], default: []
    field :animNormals, [float], default: []
    field :boneIds, String.t(), default: ""
    field :boneWeights, [float], default: []
    field :vaoId, non_neg_integer, default: 0
    field :vboId, [non_neg_integer], default: []
  end
end
