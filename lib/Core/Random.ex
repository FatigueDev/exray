defmodule Exray.Core.Random do
  @moduledoc """
  Generate random numbers, set the seed of Raylib
  """

  @doc """
  Set the seed for the random number generator
  """
  @spec set_random_seed(seed :: non_neg_integer) :: :ok
  defdelegate set_random_seed(seed), to: Exray.Core.Random.Loader

  @doc """
  Get a random value between min and max (both included)
  """
  @spec get_random_value(min :: integer, max :: integer) :: random_value :: integer
  defdelegate get_random_value(min, max), to: Exray.Core.Random.Loader

  @doc """
  Load random values sequence, no values repeated
  """
  @spec load_random_sequence(count :: non_neg_integer, min :: integer, max :: integer) ::
          random_sequence :: [integer]
  defdelegate load_random_sequence(count, min, max), to: Exray.Core.Random.Loader

  @doc """
  Unload random values sequence
  """
  @spec unload_random_sequence(sequence :: [integer]) :: :ok
  defdelegate unload_random_sequence(sequence), to: Exray.Core.Random.Loader
end
