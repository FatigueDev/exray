defmodule Exray.Structs.Rectangle do
  @moduledoc """
  Rectangle TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
    field :width, float, default: 0.0
    field :height, float, default: 0.0
  end
end
