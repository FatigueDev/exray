module Exray.Shapes.Spline.Loader
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec draw_spline_linear(points :: [exVector2], thick :: float, color :: exColor) :: :ok
spec draw_spline_basis(points :: [exVector2], thick :: float, color :: exColor) :: :ok
spec draw_spline_catmull_rom(points :: [exVector2], thick :: float, color :: exColor) :: :ok
spec draw_spline_bezier_quadratic(points :: [exVector2], thick :: float, color :: exColor) :: :ok
spec draw_spline_bezier_cubic(points :: [exVector2], thick :: float, color :: exColor) :: :ok
spec draw_spline_segment_linear(p1 :: exVector2, p2 :: exVector2, thick :: float, color :: exColor) :: :ok
spec draw_spline_segment_basis(p1 :: exVector2, p2 :: exVector2, p3 :: exVector2, p4 :: exVector2, thick :: float, color :: exColor) :: :ok
spec draw_spline_segment_catmull_rom(p1 :: exVector2, p2 :: exVector2, p3 :: exVector2, p4 :: exVector2, thick :: float, color :: exColor) :: :ok
spec draw_spline_segment_bezier_quadratic(p1 :: exVector2, c2 :: exVector2, p3 :: exVector2, thick :: float, color :: exColor) :: :ok
spec draw_spline_segment_bezier_cubic(p1 :: exVector2, c2 :: exVector2, c3 :: exVector2, p4 :: exVector2, thick :: float, color :: exColor) :: :ok

spec get_spline_point_linear(start_pos :: exVector2, end_pos :: exVector2, t :: float) :: point :: exVector2
spec get_spline_point_basis(p1 :: exVector2, p2 :: exVector2, p3 :: exVector2, p4 :: exVector2, t :: float) :: point :: exVector2
spec get_spline_point_catmull_rom(p1 :: exVector2, p2 :: exVector2, p3 :: exVector2, p4 :: exVector2, t :: float) :: point :: exVector2
spec get_spline_point_bezier_quad(p1 :: exVector2, c2 :: exVector2, p3 :: exVector2, t :: float) :: point :: exVector2
spec get_spline_point_bezier_cubic(p1 :: exVector2, c2 :: exVector2, c3 :: exVector2, p4 :: exVector2, t :: float) :: point :: exVector2
