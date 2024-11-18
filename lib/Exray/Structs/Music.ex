defmodule Exray.Structs.Music do
  @moduledoc """
  Music TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.AudioStream

  typedstruct enforce: true do
    field :stream, AudioStream.t()
    field :frame_count, non_neg_integer, default: 0
    field :looping, boolean, default: false

    field :ctx_type, integer, default: 0
    field :ctx_data, [any], default: []
  end
end
