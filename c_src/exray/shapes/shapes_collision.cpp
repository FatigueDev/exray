#include "../exray.cpp"
#include "shapes_collision.h"
#include "../type_converter.cpp"

UNIFEX_TERM check_collision_recs(UnifexEnv *env, exRectangle rec1, exRectangle rec2){
    return check_collision_recs_result_ok(env, CheckCollisionRecs(ToRectangle(rec1), ToRectangle(rec2)));
}

UNIFEX_TERM check_collision_circles(UnifexEnv *env, exVector2 center1, double radius1, exVector2 center2, double radius2){
    return check_collision_circles_result_ok(env, CheckCollisionCircles(ToVector2(center1), radius1, ToVector2(center2), radius2));
}

UNIFEX_TERM check_collision_circle_rec(UnifexEnv *env, exVector2 center, double radius, exRectangle rec){
    return check_collision_circle_rec_result_ok(env, CheckCollisionCircleRec(ToVector2(center), radius, ToRectangle(rec)));
}

UNIFEX_TERM check_collision_point_rec(UnifexEnv *env, exVector2 point, exRectangle rec){
    return check_collision_point_rec_result_ok(env, CheckCollisionPointRec(ToVector2(point), ToRectangle(rec)));
}

UNIFEX_TERM check_collision_point_circle(UnifexEnv *env, exVector2 point, exVector2 center, double radius){
    return check_collision_point_circle_result_ok(env, CheckCollisionPointCircle(ToVector2(point), ToVector2(center), radius));
}

UNIFEX_TERM check_collision_point_triangle(UnifexEnv *env, exVector2 point, exVector2 p1, exVector2 p2, exVector2 p3){
    return check_collision_point_triangle_result_ok(env, CheckCollisionPointTriangle(ToVector2(point), ToVector2(p1), ToVector2(p2), ToVector2(p3)));
}

UNIFEX_TERM check_collision_point_poly(UnifexEnv *env, exVector2 point, exVector2* points, unsigned int points_length){
    return check_collision_point_poly_result_ok(env, CheckCollisionPointPoly(ToVector2(point), ToVector2Ptr(points, points_length), points_length));
}

UNIFEX_TERM check_collision_lines(UnifexEnv *env, exVector2 start_pos_1, exVector2 end_pos_1, exVector2 start_pos_2, exVector2 end_pos_2, exVector2* collision_point, unsigned int collision_point_length){
    return check_collision_lines_result_ok(env,
        CheckCollisionLines(
            ToVector2(start_pos_1),
            ToVector2(end_pos_1),
            ToVector2(start_pos_2),
            ToVector2(end_pos_2),
            ToVector2Ptr(collision_point, collision_point_length)
        )
    );
}

UNIFEX_TERM check_collision_point_line(UnifexEnv *env, exVector2 point, exVector2 p1, exVector2 p2, int threshold){
    return check_collision_point_line_result_ok(env, CheckCollisionPointLine(ToVector2(point), ToVector2(p1), ToVector2(p2), threshold));
}

UNIFEX_TERM get_collision_rec(UnifexEnv *env, exRectangle rec1, exRectangle rec2){
    return get_collision_rec_result_ok(env, ToExRectangle(GetCollisionRec(ToRectangle(rec1), ToRectangle(rec2))));
}