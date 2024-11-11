module Exray.Shapes.Basic.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec set_shapes_texture(texture :: exTexture, source :: exRectangle) :: {:ok :: label}

spec draw_pixel(posX :: int, posY :: int, color :: exColor) :: {:ok :: label}
spec draw_pixel_v(position :: exVector2, color :: exColor) :: {:ok :: label}

spec draw_line(startPosX :: int, startPosY :: int, endPosX :: int, endPosY :: int, color :: exColor) :: {:ok :: label}
spec draw_line_v(startPos :: exVector2, endPos :: exVector2, color :: exColor) :: {:ok :: label}
spec draw_line_ex(startPos :: exVector2, endPos :: exVector2, thick :: float, color :: exColor) :: {:ok :: label}
spec draw_line_strip(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}
spec draw_line_bezier(startPos :: exVector2, endPos :: exVector2, thick :: float, color :: exColor) :: {:ok :: label}

spec draw_circle(centerX :: int, centerY :: int, radius :: float, color :: exColor) :: {:ok :: label}
spec draw_circle_sector(center :: exVector2, radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}
spec draw_circle_sector_lines(center :: exVector2, radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}
spec draw_circle_gradient(centerX :: int, centerY :: int, radius :: float, color1 :: exColor, color2 :: exColor) :: {:ok :: label}
spec draw_circle_v(center :: exVector2, radius :: float, color :: exColor) :: {:ok :: label}
spec draw_circle_lines(centerX :: int, centerY :: int, radius :: float, color :: exColor) :: {:ok :: label}
spec draw_circle_lines_v(center :: exVector2, radius :: float, color :: exColor) :: {:ok :: label}

spec draw_ellipse(centerX :: int, centerY :: int, radiusH :: float, radiusV :: float, color :: exColor) :: {:ok :: label}
spec draw_ellipse_lines(centerX :: int, centerY :: int, radiusH :: float, radiusV :: float, color :: exColor) :: {:ok :: label}

spec draw_ring(center :: exVector2, inner_radius :: float, outer_radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}
spec draw_ring_lines(center :: exVector2, inner_radius :: float, outer_radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}

spec draw_rectangle(posX :: int, posY :: int, width :: int, height :: int, color :: exColor) :: {:ok :: label}
spec draw_rectangle_v(position :: exVector2, size :: exVector2, color :: exColor) :: {:ok :: label}
spec draw_rectangle_rec(rec :: exRectangle, color :: exColor) :: {:ok :: label}
spec draw_rectangle_pro(rec :: exRectangle, origin :: exVector2, rotation :: float, color :: exColor) :: {:ok :: label}
spec draw_rectangle_gradient_v(posX :: int, posY :: int, width :: int, height :: int, color1 :: exColor, color2 :: exColor) :: {:ok :: label}
spec draw_rectangle_gradient_h(posX :: int, posY :: int, width :: int, height :: int, color1 :: exColor, color2 :: exColor) :: {:ok :: label}
spec draw_rectangle_gradient_ex(rec :: exRectangle, col1 :: exColor, col2 :: exColor, col3 :: exColor, col4 :: exColor) :: {:ok :: label}
spec draw_rectangle_lines(posX :: int, posY :: int, width :: int, height :: int, color :: exColor) :: {:ok :: label}
spec draw_rectangle_lines_ex(rec :: exRectangle, line_thick :: float, color :: exColor) :: {:ok :: label}
spec draw_rectangle_rounded(rec :: exRectangle, roundness :: float, segments :: int, color :: exColor) :: {:ok :: label}
spec draw_rectangle_rounded_lines(rec :: exRectangle, roundness :: float, segments :: int, line_thick :: float, color :: exColor) :: {:ok :: label}

spec draw_triangle(v1 :: exVector2, v2 :: exVector2, v3 :: exVector2, color :: exColor) :: {:ok :: label}
spec draw_triangle_lines(v1 :: exVector2, v2 :: exVector2, v3 :: exVector2, color :: exColor) :: {:ok :: label}
spec draw_triangle_fan(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}
spec draw_triangle_strip(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}

spec draw_poly(center :: exVector2, sides :: int, radius :: float, rotation :: float, color :: exColor) :: {:ok :: label}
spec draw_poly_lines(center :: exVector2, sides :: int, radius :: float, rotation :: float, color :: exColor) :: {:ok :: label}
spec draw_poly_lines_ex(center :: exVector2, sides :: int, radius :: float, rotation :: float, line_thick :: float, color :: exColor) :: {:ok :: label}
