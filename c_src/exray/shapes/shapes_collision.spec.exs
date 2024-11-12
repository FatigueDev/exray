module Exray.Shapes.Collision.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec check_collision_recs(rec1 :: exRectangle, rec2 :: exRectangle) :: {:ok :: label, colliding :: bool}
spec check_collision_circles(center1 :: exVector2, radius1 :: float, center2 :: exVector2, radius2 :: float) :: {:ok :: label, colliding :: bool}
spec check_collision_circle_rec(center :: exVector2, radius :: float, rec :: exRectangle) :: {:ok :: label, colliding :: bool}
spec check_collision_point_rec(point :: exVector2, rec :: exRectangle) :: {:ok :: label, colliding :: bool}
spec check_collision_point_circle(point :: exVector2, center :: exVector2, radius :: float) :: {:ok :: label, colliding :: bool}
spec check_collision_point_triangle(point :: exVector2, p1 :: exVector2, p2 :: exVector2, p3 :: exVector2) :: {:ok :: label, colliding :: bool}
spec check_collision_point_poly(point :: exVector2, points :: [exVector2]) :: {:ok :: label, colliding :: bool}
spec check_collision_lines(start_pos_1 :: exVector2, end_pos_1 :: exVector2, start_pos_2 :: exVector2, end_pos_2 :: exVector2, collision_point :: [exVector2]) :: {:ok :: label, colliding :: bool}
spec check_collision_point_line(point :: exVector2, p1 :: exVector2, p2 :: exVector2, threshold :: int) :: {:ok :: label, colliding :: bool}
spec get_collision_rec(rec1 :: exRectangle, rec2 :: exRectangle) :: {:ok :: label, rect :: exRectangle}
