defmodule Exray.Structs.AudioStream do
  @moduledoc """
  AudioStream TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    # rAudioBuffer*
    field :buffer, any, default: nil
    # rAudioProcessor*
    field :processor, any, default: nil

    field :sample_rate, non_neg_integer, default: 0
    field :sample_size, non_neg_integer, default: 16
    field :channels, non_neg_integer, default: 1
  end
end
