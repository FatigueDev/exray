defmodule Exray.Structs.Ray do
  @moduledoc """
  Ray TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Vector3

  typedstruct enforce: true do
    field :position, Vector3.t()
    field :direction, Vector3.t()
  end
end
