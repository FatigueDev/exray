defmodule Exray.Structs.Vector2 do
  @moduledoc """
  Vector2 TypedStruct. Defines functions for Vector2 from Raymath
  """

  use TypedStruct

  typedstruct enforce: true do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
  end

  import Exray.Utils.Guards
  alias Exray.Structs.Vector2
  alias Exray.Structs.Matrix
  alias Exray.Utils.Math

  def new(x, y) when is_number(x) and is_number(y), do: %__MODULE__{x: x / 1, y: y / 1}
  def new({x, y}) when is_number(x) and is_number(y), do: new(x, y)
  def new(x: x, y: y) when is_number(x) and is_number(y), do: new(x, y)
  def new(%{x: x, y: y}) when is_number(x) and is_number(y), do: new(x, y)

  @doc "Vector with components value 0.0f"
  @spec zero() :: Vector2.t()
  def zero, do: new(x: 0.0, y: 0.0)

  @doc "Vector with components value 1.0f"
  @spec one() :: Vector2.t()
  def one, do: new(x: 1.0, y: 1.0)

  # For some absolutely shit reason, I can't just write @doc here and have them pick it up,
  # even with function headers. So I'm doing @doc on the _second_ one and will not elaborate.
  @spec add(Vector2.t(), Vector2.t()) :: Vector2.t()
  def add(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: v1.x + v2.x, y: v1.y + v2.y)

  @doc """
  Add vector and vector or float
  """
  @spec add(Vector2.t(), number) :: Vector2.t()
  def add(v, f) when is_vector2(v) and is_number(f),
    do: new(x: v.x + f, y: v.y + f)

  @spec subtract(Vector2.t(), Vector2.t()) :: Vector2.t()
  def subtract(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: v1.x - v2.x, y: v1.y - v2.y)

  @doc "Subtract vector by vector or float"
  @spec subtract(Vector2.t(), float) :: Vector2.t()
  def subtract(v, f) when is_vector2(v) and is_number(f), do: new(x: v.x - f, y: v.y - f)

  @doc "Calculate vector length"
  @spec length(Vector2.t()) :: float
  def length(v) when is_vector2(v), do: :math.sqrt(v.x * v.x + v.y * v.y)

  @doc "Calculate vector square length"
  @spec length_sqr(Vector2.t()) :: float
  def length_sqr(v) when is_vector2(v), do: v.x * v.x + v.y * v.y

  @doc "Calculate two vectors dot product"
  @spec dot_product(Vector2.t(), Vector2.t()) :: float
  def dot_product(v1, v2) when is_vector2(v1) and is_vector2(v2), do: v1.x * v2.x + v1.y * v2.y

  @doc "Calculate distance between two vectors"
  @spec distance(Vector2.t(), Vector2.t()) :: float
  def distance(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: :math.sqrt((v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y))

  @doc "Calculate square distance between two vectors"
  @spec distance_sqr(Vector2.t(), Vector2.t()) :: float
  def distance_sqr(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: (v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y)

  @doc """
  Calculate angle between two vectors

  NOTE: Angle is calculated from origin point (0, 0)
  """
  @spec angle(Vector2.t(), Vector2.t()) :: float
  def angle(v1, v2) when is_vector2(v1) and is_vector2(v2) do
    dot = v1.x * v2.x + v1.y * v2.y
    det = v1.x * v2.y - v1.y * v2.x
    :math.atan2(det, dot)
  end

  @doc """
  Calculate angle defined by a two vectors line

  NOTE: Parameters need to be normalized

  Current implementation should be aligned with glm::angle
  """
  @spec line_angle(Vector2.t(), Vector2.t()) :: float
  def line_angle(start, stop) when is_vector2(start) and is_vector2(stop) do
    -:math.atan2(stop.y - start.y, stop.x - start.x)
  end

  @doc "Scale vector (multiply by value)"
  @spec scale(Vector2.t(), number) :: Vector2.t()
  def scale(v, scale) when is_vector2(v) and is_number(scale),
    do: new(x: v.x * scale, y: v.y * scale)

  @doc "Multiply vector by vector"
  @spec multiply(Vector2.t(), Vector2.t()) :: Vector2.t()
  def multiply(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: v1.x * v2.x, y: v1.y * v2.y)

  @doc "Negate vector"
  @spec negate(Vector2.t()) :: Vector2.t()
  def negate(v) when is_vector2(v), do: new(x: -v.x, y: -v.y)

  @doc "Divide vector by vector"
  @spec divide(Vector2.t(), Vector2.t()) :: Vector2.t()
  def divide(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: v1.x / v2.x, y: v1.y / v2.y)

  @doc "Normalize provided vector"
  @spec normalize(Vector2.t()) :: Vector2.t()
  def normalize(v) when is_vector2(v) do
    case :math.sqrt(v.x * v.x + v.y * v.y) do
      length when length > 0 ->
        ilength = 1.0 / length
        new(x: v.x * ilength, y: v.y * ilength)

      _ ->
        zero()
    end
  end

  @doc " Transforms a Vector2 by a given Matrix"
  @spec transform(Vector2.t(), Matrix.t()) :: Vector2.t()
  def transform(v, mat) when is_vector2(v) and is_matrix(mat) do
    new(
      x: mat.m0 * v.x + mat.m4 * v.y + mat.m8 * 0.0 + mat.m12,
      y: mat.m1 * v.x + mat.m5 * v.y + mat.m9 * 0.0 + mat.m13
    )
  end

  @doc "Calculate linear interpolation between two vectors"
  @spec lerp(Vector2.t(), Vector2.t(), number) :: Vector2.t()
  def lerp(v1, v2, amount) when is_vector2(v1) and is_vector2(v2) and is_number(amount) do
    new(x: v1.x + amount * (v2.x - v1.x), y: v1.y + amount * (v2.y - v1.y))
  end

  @doc "Calculate reflected vector to normal"
  @spec reflect(Vector2.t(), Vector2.t()) :: Vector2.t()
  def reflect(v, normal) when is_vector2(v) and is_vector2(normal) do
    dot = dot_product(v, normal)
    new(x: v.x - 2.0 * normal.x * dot, y: v.y - 2.0 * normal.y * dot)
  end

  @doc "Get min value for each pair of components"
  @spec min(Vector2.t(), Vector2.t()) :: Vector2.t()
  def min(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: Kernel.min(v1.x, v2.x), y: Kernel.min(v1.y, v2.y))

  @doc "Get max value for each pair of components"
  @spec max(Vector2.t(), Vector2.t()) :: Vector2.t()
  def max(v1, v2) when is_vector2(v1) and is_vector2(v2),
    do: new(x: Kernel.max(v1.x, v2.x), y: Kernel.max(v1.y, v2.y))

  @doc "Rotate vector by angle"
  @spec rotate(Vector2.t(), number) :: Vector2.t()
  def rotate(v, angle) when is_vector2(v) and is_number(angle) do
    cos = :math.cos(angle)
    sin = :math.sin(angle)

    new(
      x: v.x * cos - v.y * sin,
      y: v.x * sin + v.y * cos
    )
  end

  @doc "Move Vector towards target"
  @spec move_towards(Vector2.t(), Vector2.t(), number) :: Vector2.t()
  def move_towards(v, target, max_distance)
      when is_vector2(v) and is_vector2(target) and is_number(max_distance) do
    dx = target.x - v.x
    dy = target.y - v.y
    value = dx * dx + dy * dy

    if value == 0 or (max_distance >= 0 and value <= max_distance * max_distance) do
      target
    else
      dist = :math.sqrt(value)
      new(x: v.x + dx / dist * max_distance, y: v.y + dy / dist * max_distance)
    end
  end

  @doc "Invert the given vector. Doesn't quite work as well as `Exray.Structs.Vector2.negate/1`, though."
  @spec invert(Vector2.t()) :: Vector2.t()
  def invert(v) when is_vector2(v), do: new(x: 1.0 / v.x, y: 1.0 / v.y)

  @doc """
  Clamp the components of the vector between min and max values specified by the given vectors
  """
  @spec clamp(Vector2.t(), Vector2.t(), Vector2.t()) :: Vector2.t()
  def clamp(v, min, max) when is_vector2(v) and is_vector2(min) and is_vector2(max),
    do:
      new(
        x: Kernel.min(max.x, Kernel.max(min.x, v.x)),
        y: Kernel.min(max.y, Kernel.max(min.y, v.y))
      )

  @doc "Clamp the magnitude of the vector between two min and max values"
  @spec clamp_value(Vector2.t(), number, number) :: Vector2.t()
  def clamp_value(v, min, max) when is_vector2(v) and is_number(min) and is_number(max) do
    case v.x * v.x + v.y * v.y do
      length when length > 0 ->
        scale =
          case :math.sqrt(length) do
            length_squared when length_squared < min ->
              min / length_squared

            length_squared when length_squared > max ->
              max / length_squared

            _ ->
              1
          end

        new(x: v.x * scale, y: v.y * scale)

      _ ->
        v
    end
  end

  @doc "Check whether two given vectors are almost equal.

  Very useful given `1.00000001 != 1.0000000003`"
  @spec equals(Vector2.t(), Vector2.t()) :: boolean
  def equals(p, q) when is_vector2(p) and is_vector2(q) do
    Kernel.abs(p.x - q.x) <=
      Math.epsilon() * Kernel.max(1.0, Kernel.max(Kernel.abs(p.x), Kernel.abs(q.x))) and
      Kernel.abs(p.y - q.y) <=
        Math.epsilon() * Kernel.max(1.0, Kernel.max(Kernel.abs(p.y), Kernel.abs(q.y)))
  end

  @doc """
  Compute the direction of a refracted ray

      v: normalized direction of the incoming ray
      n: normalized normal vector of the interface of two optical media
      r: ratio of the refractive index of the medium from where the ray comes
      to the refractive index of the medium on the other side of the surface
  """
  @spec refract(Vector2.t(), Vector2.t(), number) :: Vector2.t()
  def refract(v, n, r) when is_vector2(v) and is_vector2(n) and is_number(r) do
    dot = v.x * n.x + v.y * n.y
    d = 1.0 - r * r * (1.0 - dot * dot)

    if d >= 0.0 do
      d = :math.sqrt(d)
      new(x: r * v.x - (r * dot + d) * n.x, y: r * v.y - (r * dot + d) * n.y)
    else
      zero()
    end
  end
end
