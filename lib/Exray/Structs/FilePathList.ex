defmodule Exray.Structs.FilePathList do
  @moduledoc """
  FilePathList TypedStruct
  """
  use TypedStruct

  # We have Elixir, so we shouldn't _really_ need this.

  typedstruct enforce: true do
    field :capacity, non_neg_integer, default: 0
    field :count, non_neg_integer, default: 0
    field :paths, [String.t()], default: []
  end
end
