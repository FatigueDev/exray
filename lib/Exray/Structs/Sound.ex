defmodule Exray.Structs.Sound do
  @moduledoc """
  Sound TypedStruct
  """
  use TypedStruct

  # typedef struct Sound {
  #     AudioStream stream;         // Audio stream
  #     unsigned int frameCount;    // Total number of frames (considering channels)
  # } Sound;
  typedstruct enforce: true do
    field :stream, AudioStream.t()
    field :frame_count, non_neg_integer, default: 0
  end
end
