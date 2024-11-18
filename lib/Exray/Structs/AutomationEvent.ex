defmodule Exray.Structs.AutomationEvent do
  @moduledoc """
  AutomationEvent TypedStruct
  """
  use TypedStruct

  typedstruct enforce: true do
    field :frame, non_neg_integer, default: 0
    field :type, non_neg_integer, default: 0

    # [4]
    field :params, [integer], default: []
  end
end
