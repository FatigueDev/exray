defmodule Exray.Structs.Wave do
  @moduledoc """
  Wave
  """
  use TypedStruct

  typedstruct enforce: true do
    field :frameCount, non_neg_integer, default: 0
    field :sampleRate, non_neg_integer, default: 0
    field :sampleSize, non_neg_integer, default: 0
    # ! Potentially fucky wucky. Is a `void *`.
    field :data, any
  end
end
