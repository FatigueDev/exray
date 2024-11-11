defmodule Exray.Shapes.Collision do

  @loader Exray.Shapes.Collision.Loader

  @doc """
  Check collision between two rectangles
  """
  @spec check_collision_recs(rec1 :: Rectangle, rec2 :: Rectangle) :: {:ok, colliding :: boolean}
  defdelegate check_collision_recs(rec1, rec2), to: @loader

  @doc """
  Check collision between two circles
  """
  @spec check_collision_circles(center1 :: Vector2, radius1 :: float, center2 :: Vector2, radius2 :: float) :: {:ok, colliding :: boolean}
  defdelegate check_collision_circles(center1, radius1, center2, radius2), to: @loader

  @doc """
  Check collision between circle and rectangle
  """
  @spec check_collision_circle_rec(center :: Vector2, radius :: float, rec :: Rectangle) :: {:ok, colliding :: boolean}
  defdelegate check_collision_circle_rec(center, radius, rec), to: @loader

  @doc """
  Check if point is inside rectangle
  """
  @spec check_collision_point_rec(point :: Vector2, rec :: Rectangle) :: {:ok, colliding :: boolean}
  defdelegate check_collision_point_rec(point, rec), to: @loader

  @doc """
  Check if point is inside circle
  """
  @spec check_collision_point_circle(point :: Vector2, center :: Vector2, radius :: float) :: {:ok, colliding :: boolean}
  defdelegate check_collision_point_circle(point, center, radius), to: @loader

  @doc """
  Check if point is inside a triangle
  """
  @spec check_collision_point_triangle(point :: Vector2, p1 :: Vector2, p2 :: Vector2, p3 :: Vector2) :: {:ok, colliding :: boolean}
  defdelegate check_collision_point_triangle(point, p1, p2, p3), to: @loader

  @doc """
  Check if point is within a polygon described by array of vertices
  """
  @spec check_collision_point_poly(point :: Vector2, points :: [Vector2], point_count :: integer) :: {:ok, colliding :: boolean}
  defdelegate check_collision_point_poly(point, points, point_count), to: @loader

  @doc """
  Check the collision between two lines defined by two points each, returns collision point by reference
  """
  @spec check_collision_lines(start_pos_1 :: Vector2, end_pos_1 :: Vector2, start_pos_2 :: Vector2, end_pos_2 :: Vector2, collision_point :: [Vector2]) :: {:ok, colliding :: boolean}
  defdelegate check_collision_lines(start_pos_1, end_pos_1, start_pos_2, end_pos_2, collision_point), to: @loader

  @doc """
  Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
  """
  @spec check_collision_point_line(point :: Vector2, p1 :: Vector2, p2 :: Vector2, threshold :: integer) :: {:ok, colliding :: boolean}
  defdelegate check_collision_point_line(point, p1, p2, threshold), to: @loader

  @doc """
  Get collision rectangle for two rectangles collision
  """
  @spec get_collision_rec(rec1 :: Rectangle, rec2 :: Rectangle) :: {:ok, rectangle :: Rectangle}
  defdelegate get_collision_rec(rec1, rec2), to: @loader

end