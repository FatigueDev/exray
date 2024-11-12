#include "../exray.cpp"
#include "shapes_spline.h"
#include "../type_converter.cpp"

UNIFEX_TERM draw_spline_linear(UnifexEnv *env, exVector2 *points, unsigned int points_length, double thick, exColor color){
    DrawSplineLinear(ToVector2Ptr(points, points_length), points_length, thick, ToColor(color));
    return draw_spline_linear_result_ok(env);
}

UNIFEX_TERM draw_spline_basis(UnifexEnv *env, exVector2 *points, unsigned int points_length, double thick, exColor color){
    DrawSplineBasis(ToVector2Ptr(points, points_length), points_length, thick, ToColor(color));
    return draw_spline_basis_result_ok(env);
}

UNIFEX_TERM draw_spline_catmull_rom(UnifexEnv *env, exVector2 *points, unsigned int points_length, double thick, exColor color){
    DrawSplineCatmullRom(ToVector2Ptr(points, points_length), points_length, thick, ToColor(color));
    return draw_spline_catmull_rom_result_ok(env);
}

UNIFEX_TERM draw_spline_bezier_quadratic(UnifexEnv *env, exVector2 *points, unsigned int points_length, double thick, exColor color){
    DrawSplineBezierQuadratic(ToVector2Ptr(points, points_length), points_length, thick, ToColor(color));
    return draw_spline_bezier_quadratic_result_ok(env);
}

UNIFEX_TERM draw_spline_bezier_cubic(UnifexEnv *env, exVector2 *points, unsigned int points_length, double thick, exColor color){
    DrawSplineBezierCubic(ToVector2Ptr(points, points_length), points_length, thick, ToColor(color));
    return draw_spline_bezier_cubic_result_ok(env);
}

UNIFEX_TERM draw_spline_segment_linear(UnifexEnv *env, exVector2 p1, exVector2 p2, double thick, exColor color){
    DrawSplineSegmentLinear(ToVector2(p1), ToVector2(p2), thick, ToColor(color));
    return draw_spline_segment_linear_result_ok(env);
}

UNIFEX_TERM draw_spline_segment_basis(UnifexEnv *env, exVector2 p1, exVector2 p2, exVector2 p3, exVector2 p4, double thick, exColor color){
    DrawSplineSegmentBasis(ToVector2(p1), ToVector2(p2), ToVector2(p3), ToVector2(p4), thick, ToColor(color));
    return draw_spline_segment_basis_result_ok(env);
}

UNIFEX_TERM draw_spline_segment_catmull_rom(UnifexEnv *env, exVector2 p1, exVector2 p2, exVector2 p3, exVector2 p4, double thick, exColor color){
    DrawSplineSegmentCatmullRom(ToVector2(p1), ToVector2(p2), ToVector2(p3), ToVector2(p4), thick, ToColor(color));
    return draw_spline_segment_catmull_rom_result_ok(env);
}

UNIFEX_TERM draw_spline_segment_bezier_quadratic(UnifexEnv *env, exVector2 p1, exVector2 c2, exVector2 p3, double thick, exColor color){
    DrawSplineSegmentBezierQuadratic(ToVector2(p1), ToVector2(c2), ToVector2(p3), thick, ToColor(color));
    return draw_spline_segment_bezier_quadratic_result_ok(env);
}

UNIFEX_TERM draw_spline_segment_bezier_cubic(UnifexEnv *env, exVector2 p1, exVector2 c2, exVector2 c3, exVector2 p4, double thick, exColor color){
    DrawSplineSegmentBezierCubic(ToVector2(p1), ToVector2(c2), ToVector2(c3), ToVector2(p4), thick, ToColor(color));
    return draw_spline_segment_bezier_cubic_result_ok(env);
}

UNIFEX_TERM get_spline_point_linear(UnifexEnv *env, exVector2 start_pos, exVector2 end_pos, double t){
    return get_spline_point_linear_result_ok(env, ToExVector2(GetSplinePointLinear(ToVector2(start_pos), ToVector2(end_pos), t)));
}

UNIFEX_TERM get_spline_point_basis(UnifexEnv *env, exVector2 p1, exVector2 p2, exVector2 p3, exVector2 p4, double t){
    return get_spline_point_basis_result_ok(env, ToExVector2(GetSplinePointBasis(ToVector2(p1), ToVector2(p2), ToVector2(p3), ToVector2(p4), t)));
}

UNIFEX_TERM get_spline_point_catmull_rom(UnifexEnv *env, exVector2 p1, exVector2 p2, exVector2 p3, exVector2 p4, double t){
    return get_spline_point_catmull_rom_result_ok(env, ToExVector2(GetSplinePointCatmullRom(ToVector2(p1), ToVector2(p2), ToVector2(p3), ToVector2(p4), t)));
}

UNIFEX_TERM get_spline_point_bezier_quad(UnifexEnv *env, exVector2 p1, exVector2 c2, exVector2 p3, double t){
    return get_spline_point_bezier_quad_result_ok(env, ToExVector2(GetSplinePointBezierQuad(ToVector2(p1), ToVector2(c2), ToVector2(p3), t)));
}

UNIFEX_TERM get_spline_point_bezier_cubic(UnifexEnv *env, exVector2 p1, exVector2 c2, exVector2 c3, exVector2 p4, double t){
    return get_spline_point_bezier_cubic_result_ok(env, ToExVector2(GetSplinePointBezierCubic(ToVector2(p1), ToVector2(c2), ToVector2(c3), ToVector2(p4), t)));
}