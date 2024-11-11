#include "exray.cpp"
#include "shapes_collision.h"
#include "type_converter.cpp"

// # bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);                                           // Check collision between two rectangles
// spec check_collision_recs(rec1 :: exRectangle, rec2 :: exRectangle) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_recs(UnifexEnv *env, exRectangle rec1, exRectangle rec2){
    return check_collision_recs_result_ok(env, CheckCollisionRecs(ToRectangle(rec1), ToRectangle(rec2)));
}

// # bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);        // Check collision between two circles
// spec check_collision_circles(center1 :: exVector2, radius1 :: float, center2 :: exVector2, radius2 :: float) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_circles(UnifexEnv *env, exVector2 center1, double radius1, exVector2 center2, double radius2){
    return check_collision_circles_result_ok(env, CheckCollisionCircles(ToVector2(center1), radius1, ToVector2(center2), radius2));
}

// # bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);                         // Check collision between circle and rectangle
// spec check_collision_circle_rec(center :: exVector2, radius :: float, rec :: exRectangle) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_circle_rec(UnifexEnv *env, exVector2 center, double radius, exRectangle rec){
    return check_collision_circle_rec_result_ok(env, CheckCollisionCircleRec(ToVector2(center), radius, ToRectangle(rec)));
}

// # bool CheckCollisionPointRec(Vector2 point, Rectangle rec);                                         // Check if point is inside rectangle
// spec check_collision_point_rec(point :: exVector2, rec :: exRectangle) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_point_rec(UnifexEnv *env, exVector2 point, exRectangle rec){
    return check_collision_point_rec_result_ok(env, CheckCollisionPointRec(ToVector2(point), ToRectangle(rec)));
}

// # bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);                       // Check if point is inside circle
// spec check_collision_point_circle(point :: exVector2, center :: exVector2, radius :: float) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_point_circle(UnifexEnv *env, exVector2 point, exVector2 center, double radius){
    return check_collision_point_circle_result_ok(env, CheckCollisionPointCircle(ToVector2(point), ToVector2(center), radius));
}

// # bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);               // Check if point is inside a triangle
// spec check_collision_point_triangle(point :: exVector2, p1 :: exVector2, p2 :: exVector2, p3 :: exVector2) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_point_triangle(UnifexEnv *env, exVector2 point, exVector2 p1, exVector2 p2, exVector2 p3){
    return check_collision_point_triangle_result_ok(env, CheckCollisionPointTriangle(ToVector2(point), ToVector2(p1), ToVector2(p2), ToVector2(p3)));
}

// # bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int pointCount);                      // Check if point is within a polygon described by array of vertices
// spec check_collision_point_poly(point :: exVector2, points :: [exVector2], point_count :: int) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_point_poly(UnifexEnv *env, exVector2 point, exVector2* points, unsigned int points_length, int point_count){
    Vector2 converted[points_length];
    for(unsigned int i = 0; i < points_length; i++){
        converted[i] = ToVector2(points[i]);
    }
    return check_collision_point_poly_result_ok(env, CheckCollisionPointPoly(ToVector2(point), converted, points_length));
}

// # bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint); // Check the collision between two lines defined by two points each, returns collision point by reference
// spec check_collision_lines(start_pos_1 :: exVector2, end_pos_1 :: exVector2, start_pos_2 :: exVector2, end_pos_2 :: exVector2, collision_point :: [exVector2]) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_lines(UnifexEnv *env, exVector2 start_pos_1, exVector2 end_pos_1, exVector2 start_pos_2, exVector2 end_pos_2, exVector2* collision_point, unsigned int collision_point_length){
    Vector2 converted[collision_point_length];
    for(unsigned int i = 0; i < collision_point_length; i++){
        converted[i] = ToVector2(collision_point[i]);
    }
    return check_collision_lines_result_ok(env, CheckCollisionLines(ToVector2(start_pos_1), ToVector2(end_pos_1), ToVector2(start_pos_2), ToVector2(end_pos_2), converted));
}

// # bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);                // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
// spec check_collision_point_line(point :: exVector2, p1 :: exVector2, p2 :: exVector2, threshold :: int) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM check_collision_point_line(UnifexEnv *env, exVector2 point, exVector2 p1, exVector2 p2, int threshold){
    return check_collision_point_line_result_ok(env, CheckCollisionPointLine(ToVector2(point), ToVector2(p1), ToVector2(p2), threshold));
}

// # Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);                                         // Get collision rectangle for two rectangles collision
// spec get_collision_rec(rec1 :: exRectangle, rec2 :: exRectangle) :: {:ok :: label, colliding :: bool}
UNIFEX_TERM get_collision_rec(UnifexEnv *env, exRectangle rec1, exRectangle rec2){
    return get_collision_rec_result_ok(env, ToExRectangle(GetCollisionRec(ToRectangle(rec1), ToRectangle(rec2))));
}