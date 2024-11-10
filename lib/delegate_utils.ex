defmodule DelegateUtils do
  @moduledoc false

  def loader_boolean_result_to_predicate_result(loader_result) do
    case loader_result do
      {:ok, true} ->
        true
      {:ok, false} ->
        false
      _ ->
        throw(:delegate_utils_error)
    end
  end

end
