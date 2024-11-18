defmodule Exray.Structs.Camera2D do
  @moduledoc """
  Camera2D TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Vector2

  typedstruct enforce: true do
    field :offset, Vector2.t()
    field :target, Vector2.t()
    field :rotation, float, default: 0.0
    field :zoom, float, default: 0.0
  end
end
