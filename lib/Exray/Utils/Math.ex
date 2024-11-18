defmodule Exray.Utils.Math do
  @moduledoc """
  Utility functions from [raymath.h](https://github.com/raysan5/raylib/blob/master/src/raymath.h)
  """

  @doc "A floating point 'good enough' threshold for comparison checks"
  def epsilon, do: 0.000001

  @doc "Clamp float value"
  @spec clamp(value :: float, min :: float, max :: float) :: float
  def clamp(value, min, max) when is_float(value) and is_float(min) and is_float(max) do
    case value do
      value when value < min -> min
      value when value > max -> max
      _ -> value
    end
  end

  @doc "Calculate linear interpolation between two floats"
  @spec lerp(start :: float, stop :: float, amount :: float) :: float
  def lerp(start, stop, amount) when is_float(start) and is_float(stop) and is_float(amount) do
    start + amount * (stop - start)
  end

  @doc "Normalize input value within input range"
  @spec normalize(value :: float, start :: float, stop :: float) :: float
  def normalize(value, start, stop) when is_float(value) and is_float(start) and is_float(stop) do
    (value - start) / (stop - start)
  end

  @doc "Remap input value within input range to output range"
  @spec remap(
          value :: float,
          input_start :: float,
          input_stop :: float,
          output_start :: float,
          output_stop :: float
        ) :: float
  def remap(value, input_start, input_stop, output_start, output_stop)
      when is_float(value) and is_float(input_start) and is_float(input_stop) and
             is_float(output_start) and is_float(output_stop) do
    (value - input_start) / (input_stop - input_start) * (output_stop - output_start) +
      output_start
  end

  @doc "Wrap input value from min to max"
  @spec wrap(value :: float, min :: float, max :: float) :: float
  def wrap(value, min, max) when is_float(value) and is_float(min) and is_float(max) do
    value - (max - min) * floor((value - min) / (max - min))
  end

  @doc "Check whether two given floats are almost equal.

  Exray developer note: \"Meh, looks close enough :^)\""
  @spec float_equals(x :: float, y :: float) :: boolean
  def float_equals(x, y) when is_float(x) and is_float(y) do
    abs(x - y) <= epsilon() * max(1.0, max(abs(x), abs(y)))
  end
end
