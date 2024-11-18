defmodule Exray.Structs.NPatchInfo do
  @moduledoc """
  NPatchInfo TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.Rectangle

  typedstruct enforce: true do
    field :source, Rectangle.t()
    field :left, integer, default: 0
    field :top, integer, default: 0
    field :right, integer, default: 0
    field :bottom, integer, default: 0
    field :layout, integer, default: 0
  end
end
