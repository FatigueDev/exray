defmodule Exray.Shapes.Basic do
  @moduledoc """
  Draw pixels, lines and other basic geometry.
  """

  alias Exray.Structs.Texture
  alias Exray.Structs.Rectangle
  alias Exray.Structs.Color
  alias Exray.Structs.Vector2

  @doc """
  Set texture and rectangle to be used on shapes drawing
  """
  @spec set_shapes_texture(texture :: Texture.t(), source :: Rectangle.t()) :: :ok
  defdelegate set_shapes_texture(texture, source), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a pixel
  """
  @spec draw_pixel(posX :: integer, posY :: integer, color :: Color.t()) :: :ok
  defdelegate draw_pixel(posX, posY, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a pixel (Vector version)
  """
  @spec draw_pixel_v(position :: Vector2.t(), color :: Color.t()) :: :ok
  defdelegate draw_pixel_v(position, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a line
  """
  @spec draw_line(
          startPosX :: integer,
          startPosY :: integer,
          endPosX :: integer,
          endPosY :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_line(startPosX, startPosY, endPosX, endPosY, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a line (using gl lines)
  """
  @spec draw_line_v(startPos :: Vector2.t(), endPos :: Vector2.t(), color :: Color.t()) :: :ok
  defdelegate draw_line_v(startPos, endPos, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a line (using triangles/quads)
  """
  @spec draw_line_ex(
          startPos :: Vector2.t(),
          endPos :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_line_ex(startPos, endPos, thick, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw lines sequence (using gl lines)
  """
  @spec draw_line_strip(points :: [Vector2.t()], color :: Color.t()) :: :ok
  defdelegate draw_line_strip(points, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw line segment cubic-bezier in-out interpolation
  """
  @spec draw_line_bezier(
          startPos :: Vector2.t(),
          endPos :: Vector2.t(),
          thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_line_bezier(startPos, endPos, thick, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled circle
  """
  @spec draw_circle(centerX :: integer, centerY :: integer, radius :: float, color :: Color.t()) ::
          :ok
  defdelegate draw_circle(centerX, centerY, radius, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a piece of a circle
  """
  @spec draw_circle_sector(
          center :: Vector2.t(),
          radius :: float,
          start_angle :: float,
          end_angle :: float,
          segments :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_circle_sector(center, radius, start_angle, end_angle, segments, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw circle sector outline
  """
  @spec draw_circle_sector_lines(
          center :: Vector2.t(),
          radius :: float,
          start_angle :: float,
          end_angle :: float,
          segments :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_circle_sector_lines(center, radius, start_angle, end_angle, segments, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a gradient-filled circle
  """
  @spec draw_circle_gradient(
          centerX :: integer,
          centerY :: integer,
          radius :: float,
          color1 :: Color.t(),
          color2 :: Color.t()
        ) :: :ok
  defdelegate draw_circle_gradient(centerX, centerY, radius, color1, color2),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled circle (Vector version)
  """
  @spec draw_circle_v(center :: Vector2.t(), radius :: float, color :: Color.t()) :: :ok
  defdelegate draw_circle_v(center, radius, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw circle outline
  """
  @spec draw_circle_lines(
          centerX :: integer,
          centerY :: integer,
          radius :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_circle_lines(centerX, centerY, radius, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw circle outline (Vector version)
  """
  @spec draw_circle_lines_v(center :: Vector2.t(), radius :: float, color :: Color.t()) :: :ok
  defdelegate draw_circle_lines_v(center, radius, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw ellipse
  """
  @spec draw_ellipse(
          centerX :: integer,
          centerY :: integer,
          radiusH :: float,
          radiusV :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_ellipse(centerX, centerY, radiusH, radiusV, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw ellipse outline
  """
  @spec draw_ellipse_lines(
          centerX :: integer,
          centerY :: integer,
          radiusH :: float,
          radiusV :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_ellipse_lines(centerX, centerY, radiusH, radiusV, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw ring
  """
  @spec draw_ring(
          center :: Vector2,
          inner_radius :: float,
          outer_radius :: float,
          start_angle :: float,
          end_angle :: float,
          segments :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_ring(
                center,
                inner_radius,
                outer_radius,
                start_angle,
                end_angle,
                segments,
                color
              ),
              to: Exray.Shapes.Basic.Loader

  @doc """
  Draw ring outline
  """
  @spec draw_ring_lines(
          center :: Vector2.t(),
          inner_radius :: float,
          outer_radius :: float,
          start_angle :: float,
          end_angle :: float,
          segments :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_ring_lines(
                center,
                inner_radius,
                outer_radius,
                start_angle,
                end_angle,
                segments,
                color
              ),
              to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled rectangle
  """
  @spec draw_rectangle(
          posX :: integer,
          posY :: integer,
          width :: integer,
          height :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle(posX, posY, width, height, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled rectangle (Vector version)
  """
  @spec draw_rectangle_v(position :: Vector2.t(), size :: Vector2.t(), color :: Color.t()) :: :ok
  defdelegate draw_rectangle_v(position, size, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled rectangle
  """
  @spec draw_rectangle_rec(rec :: Rectangle.t(), color :: Color.t()) :: :ok
  defdelegate draw_rectangle_rec(rec, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled rectangle with pro parameters
  """
  @spec draw_rectangle_pro(
          rec :: Rectangle.t(),
          origin :: Vector2.t(),
          rotation :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_pro(rec, origin, rotation, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a vertical-gradient-filled rectangle
  """
  @spec draw_rectangle_gradient_v(
          posX :: integer,
          posY :: integer,
          width :: integer,
          height :: integer,
          color1 :: Color.t(),
          color2 :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_gradient_v(posX, posY, width, height, color1, color2),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a horizontal-gradient-filled rectangle
  """
  @spec draw_rectangle_gradient_h(
          posX :: integer,
          posY :: integer,
          width :: integer,
          height :: integer,
          color1 :: Color.t(),
          color2 :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_gradient_h(posX, posY, width, height, color1, color2),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a gradient-filled rectangle with custom vertex colors
  """
  @spec draw_rectangle_gradient_ex(
          rec :: Rectangle.t(),
          col1 :: Color.t(),
          col2 :: Color.t(),
          col3 :: Color.t(),
          col4 :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_gradient_ex(rec, col1, col2, col3, col4),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw rectangle outline
  """
  @spec draw_rectangle_lines(
          posX :: integer,
          posY :: integer,
          width :: integer,
          height :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_lines(posX, posY, width, height, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw rectangle outline with extended parameters
  """
  @spec draw_rectangle_lines_ex(rec :: Rectangle.t(), line_thick :: float, color :: Color.t()) ::
          :ok
  defdelegate draw_rectangle_lines_ex(rec, line_thick, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw rectangle with rounded edges
  """
  @spec draw_rectangle_rounded(
          rec :: Rectangle.t(),
          roundness :: float,
          segments :: integer,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_rounded(rec, roundness, segments, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw rectangle with rounded edges outline
  """
  @spec draw_rectangle_rounded_lines(
          rec :: Rectangle.t(),
          roundness :: float,
          segments :: integer,
          line_thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_rectangle_rounded_lines(rec, roundness, segments, line_thick, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a color-filled triangle (vertex in counter-clockwise order!)
  """
  @spec draw_triangle(v1 :: Vector2.t(), v2 :: Vector2.t(), v3 :: Vector2.t(), color :: Color.t()) ::
          :ok
  defdelegate draw_triangle(v1, v2, v3, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw triangle outline (vertex in counter-clockwise order!)
  """
  @spec draw_triangle_lines(
          v1 :: Vector2.t(),
          v2 :: Vector2.t(),
          v3 :: Vector2.t(),
          color :: Color.t()
        ) :: :ok
  defdelegate draw_triangle_lines(v1, v2, v3, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a triangle fan defined by points (first vertex is the center)
  """
  @spec draw_triangle_fan(points :: [Vector2.t()], color :: Color.t()) :: :ok
  defdelegate draw_triangle_fan(points, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a triangle strip defined by points
  """
  @spec draw_triangle_strip(points :: [Vector2.t()], color :: Color.t()) :: :ok
  defdelegate draw_triangle_strip(points, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a regular polygon (Vector version)
  """
  @spec draw_poly(
          center :: Vector2.t(),
          sides :: integer,
          radius :: float,
          rotation :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_poly(center, sides, radius, rotation, color), to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a polygon outline of n sides
  """
  @spec draw_poly_lines(
          center :: Vector2.t(),
          sides :: integer,
          radius :: float,
          rotation :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_poly_lines(center, sides, radius, rotation, color),
    to: Exray.Shapes.Basic.Loader

  @doc """
  Draw a polygon outline of n sides with extended parameters
  """
  @spec draw_poly_lines_ex(
          center :: Vector2.t(),
          sides :: integer,
          radius :: float,
          rotation :: float,
          line_thick :: float,
          color :: Color.t()
        ) :: :ok
  defdelegate draw_poly_lines_ex(center, sides, radius, rotation, line_thick, color),
    to: Exray.Shapes.Basic.Loader
end
