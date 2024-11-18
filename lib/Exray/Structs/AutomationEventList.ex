defmodule Exray.Structs.AutomationEventList do
  @moduledoc """
  AutomationEventList TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :capacity, non_neg_integer, default: 0
    field :count, non_neg_integer, default: 0
    field :events, [AutomationEvent.t()], default: []
  end
end
