defmodule Exray.Structs.Music do
  @moduledoc """
  Music TypedStruct
  """
  use TypedStruct

  # typedef struct Music {
  #     AudioStream stream;         // Audio stream
  #     unsigned int frameCount;    // Total number of frames (considering channels)
  #     bool looping;               // Music looping enable

  #     int ctxType;                // Type of music context (audio filetype)
  #     void *ctxData;              // Audio context data, depends on type
  # } Music;
  typedstruct enforce: true do
    field :stream, AudioStream.t()
    field :frame_count, non_neg_integer, default: 0
    field :looping, boolean, default: false

    field :ctx_type, integer, default: 0
    field :ctx_data, [any], default: []
  end
end
