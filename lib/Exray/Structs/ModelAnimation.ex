defmodule Exray.Structs.ModelAnimation do
  @moduledoc """
  ModelAnimation TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :boneCount, integer, default: 0
    field :frameCount, integer, default: 0
    field :bones, [BoneInfo.t()], default: []
    field :framePoses, [[Transform.t()]], default: []
    field :name, String.t(), default: "Model_Animation"
  end
end
