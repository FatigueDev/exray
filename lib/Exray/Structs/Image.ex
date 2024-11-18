defmodule Exray.Structs.Image do
  @moduledoc """
  Image TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    # ! Potentially fucky wucky. Is a `void *`
    field :data, [any], default: []
    field :width, integer, default: 0
    field :height, integer, default: 0
    field :mipmaps, integer, default: 0
    field :format, integer, default: 0
  end
end
