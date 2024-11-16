defmodule Exray.Shapes.Spline do
  @moduledoc """
  Like lines, but curve and stuff based on control points
  """

  alias Exray.Structs.Vector2
  alias Exray.Structs.Color

  @doc """
  Draw spline: Linear, minimum 2 points
  """
  @spec draw_spline_linear(points :: [Vector2.t()], thick :: float, color :: Color.t()) :: :ok
  defdelegate draw_spline_linear(points, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline: B-Spline, minimum 4 points
  """
  @spec draw_spline_basis(points :: [Vector2.t()], thick :: float, color :: Color.t()) :: :ok
  defdelegate draw_spline_basis(points, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline: Catmull-Rom, minimum 4 points
  """
  @spec draw_spline_catmull_rom(points :: [Vector2.t()], thick :: float, color :: Color.t()) ::
          :ok
  defdelegate draw_spline_catmull_rom(points, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
  """
  @spec draw_spline_bezier_quadratic(points :: [Vector2.t()], thick :: float, color :: Color.t()) ::
          :ok
  defdelegate draw_spline_bezier_quadratic(points, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
  """
  @spec draw_spline_bezier_cubic(points :: [Vector2.t()], thick :: float, color :: Color.t()) ::
          :ok
  defdelegate draw_spline_bezier_cubic(points, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline segment: Linear, 2 points
  """
  @spec draw_spline_segment_linear(
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_spline_segment_linear(p1, p2, thick, color), to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline segment: B-Spline, 4 points
  """
  @spec draw_spline_segment_basis(
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          p3 :: Vector2.t(),
          p4 :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_spline_segment_basis(p1, p2, p3, p4, thick, color),
    to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline segment: Catmull-Rom, 4 points
  """
  @spec draw_spline_segment_catmull_rom(
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          p3 :: Vector2.t(),
          p4 :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_spline_segment_catmull_rom(p1, p2, p3, p4, thick, color),
    to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline segment: Quadratic Bezier, 2 points, 1 control point
  """
  @spec draw_spline_segment_bezier_quadratic(
          p1 :: Vector2.t(),
          c2 :: Vector2.t(),
          p3 :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_spline_segment_bezier_quadratic(p1, c2, p3, thick, color),
    to: Exray.Shapes.Spline.Loader

  @doc """
  Draw spline segment: Cubic Bezier, 2 points, 2 control points
  """
  @spec draw_spline_segment_bezier_cubic(
          p1 :: Vector2.t(),
          c2 :: Vector2.t(),
          c3 :: Vector2.t(),
          p4 :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_spline_segment_bezier_cubic(p1, c2, c3, p4, thick, color),
    to: Exray.Shapes.Spline.Loader

  @doc """
  Get (evaluate) spline point: Linear
  """
  @spec get_spline_point_linear(start_pos :: Vector2.t(), end_pos :: Vector2.t(), t :: float) ::
          point :: Vector2.t()
  defdelegate get_spline_point_linear(start_pos, end_pos, t), to: Exray.Shapes.Spline.Loader

  @doc """
  Get (evaluate) spline point: B-Spline
  """
  @spec get_spline_point_basis(
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          p3 :: Vector2.t(),
          p4 :: Vector2.t(),
          t :: float
        ) :: point :: Vector2.t()
  defdelegate get_spline_point_basis(p1, p2, p3, p4, t), to: Exray.Shapes.Spline.Loader

  @doc """
  Get (evaluate) spline point: Catmull-Rom
  """
  @spec get_spline_point_catmull_rom(
          p1 :: Vector2.t(),
          p2 :: Vector2.t(),
          p3 :: Vector2.t(),
          p4 :: Vector2.t(),
          t :: float
        ) :: point :: Vector2.t()
  defdelegate get_spline_point_catmull_rom(p1, p2, p3, p4, t), to: Exray.Shapes.Spline.Loader

  @doc """
  Get (evaluate) spline point: Quadratic Bezier
  """
  @spec get_spline_point_bezier_quad(
          p1 :: Vector2.t(),
          c2 :: Vector2.t(),
          p3 :: Vector2.t(),
          t :: float
        ) :: point :: Vector2.t()
  defdelegate get_spline_point_bezier_quad(p1, c2, p3, t), to: Exray.Shapes.Spline.Loader

  @doc """
  Get (evaluate) spline point: Cubic Bezier
  """
  @spec get_spline_point_bezier_cubic(
          p1 :: Vector2.t(),
          c2 :: Vector2.t(),
          c3 :: Vector2.t(),
          p4 :: Vector2.t(),
          t :: float
        ) :: point :: Vector2.t()
  defdelegate get_spline_point_bezier_cubic(p1, c2, c3, p4, t), to: Exray.Shapes.Spline.Loader
end
