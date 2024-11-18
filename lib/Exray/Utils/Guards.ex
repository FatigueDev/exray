defmodule Exray.Utils.Guards do
  @moduledoc """
  Guard clauses for Exray struct types
  """
  alias Exray.Structs.Matrix
  alias Exray.Structs.Vector2
  alias Exray.Structs.Vector3

  @spec is_vector2(var :: any) :: boolean()
  defguard is_vector2(var) when is_struct(var, Vector2)

  @spec is_vector3(var :: any) :: boolean()
  defguard is_vector3(var) when is_struct(var, Vector3)

  @spec is_matrix(var :: any) :: boolean()
  defguard is_matrix(var) when is_struct(var, Matrix)
end
