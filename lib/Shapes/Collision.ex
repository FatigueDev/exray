defmodule Exray.Shapes.Collision do
  @moduledoc """
  Check if two things intersect.
  """

  alias Exray.Structs.Rectangle
  alias Exray.Structs.Vector2

  @doc """
  Check collision between two rectangles
  """
  @spec check_collision_recs(rec1 :: Rectangle.t(), rec2 :: Rectangle.t()) :: colliding :: boolean
  defdelegate check_collision_recs(rec1, rec2), to: Exray.Shapes.Collision.Loader

  @doc """
  Check collision between two circles
  """
  @spec check_collision_circles(
          center1 :: Vector2.t(),
          radius1 :: float,
          center2 :: Vector2.t(),
          radius2 :: float
        ) :: colliding :: boolean
  defdelegate check_collision_circles(center1, radius1, center2, radius2),
    to: Exray.Shapes.Collision.Loader

  @doc """
  Check collision between circle and rectangle
  """
  @spec check_collision_circle_rec(center :: Vector2.t(), radius :: float, rec :: Rectangle.t()) ::
          colliding :: boolean
  defdelegate check_collision_circle_rec(center, radius, rec), to: Exray.Shapes.Collision.Loader

  @doc """
  Check if point is inside rectangle
  """
  @spec check_collision_point_rec(point :: Vector2.t(), rec :: Rectangle.t()) ::
          colliding :: boolean
  defdelegate check_collision_point_rec(point, rec), to: Exray.Shapes.Collision.Loader

  @doc """
  Check if point is inside circle
  """
  @spec check_collision_point_circle(point :: Vector2.t(), center :: Vector2.t(), radius :: float) ::
          colliding :: boolean
  defdelegate check_collision_point_circle(point, center, radius),
    to: Exray.Shapes.Collision.Loader

  @doc """
  Check if point is inside a triangle
  """
  @spec check_collision_point_triangle(
          point :: Vector2.t(),
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          p3 :: Vector2.t()
        ) :: colliding :: boolean
  defdelegate check_collision_point_triangle(point, p1, p2, p3), to: Exray.Shapes.Collision.Loader

  @doc """
  Check if point is within a polygon described by array of vertices
  """
  @spec check_collision_point_poly(point :: Vector2.t(), points :: [Vector2.t()]) ::
          colliding :: boolean
  defdelegate check_collision_point_poly(point, points), to: Exray.Shapes.Collision.Loader

  @doc """
  Check the collision between two lines defined by two points each, returns collision point by reference
  """
  @spec check_collision_lines(
          start_pos_1 :: Vector2.t(),
          end_pos_1 :: Vector2.t(),
          start_pos_2 :: Vector2.t(),
          end_pos_2 :: Vector2.t(),
          collision_point :: [Vector2.t()]
        ) :: colliding :: boolean
  defdelegate check_collision_lines(
                start_pos_1,
                end_pos_1,
                start_pos_2,
                end_pos_2,
                collision_point
              ),
              to: Exray.Shapes.Collision.Loader

  @doc """
  Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
  """
  @spec check_collision_point_line(
          point :: Vector2.t(),
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          threshold :: integer
        ) :: colliding :: boolean
  defdelegate check_collision_point_line(point, p1, p2, threshold),
    to: Exray.Shapes.Collision.Loader

  @doc """
  Get collision rectangle for two rectangles collision
  """
  @spec get_collision_rec(rec1 :: Rectangle.t(), rec2 :: Rectangle.t()) ::
          rectangle :: Rectangle.t()
  defdelegate get_collision_rec(rec1, rec2), to: Exray.Shapes.Collision.Loader
end
