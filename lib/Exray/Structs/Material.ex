defmodule Exray.Structs.Material do
  @moduledoc """
  Material TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Shader
  alias Exray.Structs.MaterialMap

  typedstruct enforce: true do
    field :shader, Shader.t()
    field :maps, [MaterialMap.t()], default: []

    # [4]
    field :params, [float], default: []
  end
end
