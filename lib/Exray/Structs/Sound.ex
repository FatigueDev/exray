defmodule Exray.Structs.Sound do
  @moduledoc """
  Sound TypedStruct
  """
  use TypedStruct

  alias Exray.Structs.AudioStream

  typedstruct enforce: true do
    field :stream, AudioStream.t()
    field :frame_count, non_neg_integer, default: 0
  end
end
