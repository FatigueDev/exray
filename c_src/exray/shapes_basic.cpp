#include "exray.cpp"
#include "shapes_basic.h"
#include "type_converter.cpp"

//# void SetShapesTexture(Texture2D texture, Rectangle source);       // Set texture and rectangle to be used on shapes drawing
UNIFEX_TERM set_shapes_texture(UnifexEnv *env, exTexture texture, exRectangle source){
    SetShapesTexture(ToTexture(texture), ToRectangle(source));
    return set_shapes_texture_result_ok(env);
}

// # // Basic shapes drawing functions
// # void DrawPixel(int posX, int posY, Color color);                                                   // Draw a pixel
UNIFEX_TERM draw_pixel(UnifexEnv *env, int posX, int posY, exColor color) {
    DrawPixel(posX, posY, ToColor(color));
    return draw_pixel_result_ok(env);
}

// # void DrawPixelV(Vector2 position, Color color);                                                    // Draw a pixel (Vector version)
UNIFEX_TERM draw_pixel_v(UnifexEnv *env, exVector2 position, exColor color) {
    DrawPixelV(ToVector2(position), ToColor(color));
    return draw_pixel_v_result_ok(env);
}

// # void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);                // Draw a line
UNIFEX_TERM draw_line(UnifexEnv *env, int startPosX, int startPosY, int endPosX, int endPosY, exColor color) {
    DrawLine(startPosX, startPosY, endPosX, endPosY, ToColor(color));
    return draw_line_result_ok(env);
}

// # void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);                                     // Draw a line (using gl lines)
UNIFEX_TERM draw_line_v(UnifexEnv *env, exVector2 startPos, exVector2 endPos, exColor color) {
    DrawLineV(ToVector2(startPos), ToVector2(endPos), ToColor(color));
    return draw_line_v_result_ok(env);
}

// # void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);                       // Draw a line (using triangles/quads)
UNIFEX_TERM draw_line_ex(UnifexEnv *env, exVector2 startPos, exVector2 endPos, double thick, exColor color) {
    DrawLineEx(ToVector2(startPos), ToVector2(endPos), thick, ToColor(color));
    return draw_line_ex_result_ok(env);
}

// # void DrawLineStrip(Vector2 *points, int pointCount, Color color);                                  // Draw lines sequence (using gl lines)
UNIFEX_TERM draw_line_strip(UnifexEnv *env, exVector2 *points, unsigned int points_length, int point_count, exColor color){
    Vector2 converted[points_length];
    for(unsigned int i = 0; i < points_length; i++){
        converted[i] = ToVector2(points[i]);
    }
    DrawLineStrip(converted, point_count, ToColor(color));
    return draw_line_strip_result_ok(env);
}

// # void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);                   // Draw line segment cubic-bezier in-out interpolation
UNIFEX_TERM draw_line_bezier(UnifexEnv *env, exVector2 startPos, exVector2 endPos, double thick, exColor color){
    DrawLineBezier(ToVector2(startPos), ToVector2(endPos), thick, ToColor(color));
    return draw_line_bezier_result_ok(env);
}

// # void DrawCircle(int centerX, int centerY, float radius, Color color);                              // Draw a color-filled circle
UNIFEX_TERM draw_circle(UnifexEnv *env, int centerX, int centerY, double radius, exColor color){
    DrawCircle(centerX, centerY, radius, ToColor(color));
    return draw_circle_result_ok(env);
}

// # void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);      // Draw a piece of a circle
UNIFEX_TERM draw_circle_sector(UnifexEnv *env, exVector2 center, double radius, double start_angle, double end_angle, int segments, exColor color){
    DrawCircleSector(ToVector2(center), radius, start_angle, end_angle, segments, ToColor(color));
    return draw_circle_sector_result_ok(env);
}

// # void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color); // Draw circle sector outline
UNIFEX_TERM draw_circle_sector_lines(UnifexEnv *env, exVector2 center, double radius, double start_angle, double end_angle, int segments, exColor color){
    DrawCircleSectorLines(ToVector2(center), radius, start_angle, end_angle, segments, ToColor(color));
    return draw_circle_sector_lines_result_ok(env);
}

// # void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);       // Draw a gradient-filled circle
UNIFEX_TERM draw_circle_gradient(UnifexEnv *env, int centerX, int centerY, double radius, exColor color1, exColor color2){
    DrawCircleGradient(centerX, centerY, radius, ToColor(color1), ToColor(color2));
    return draw_circle_gradient_result_ok(env);
}

// # void DrawCircleV(Vector2 center, float radius, Color color);                                       // Draw a color-filled circle (Vector version)
UNIFEX_TERM draw_circle_v(UnifexEnv *env, exVector2 center, double radius, exColor color){
    DrawCircleV(ToVector2(center), radius, ToColor(color));
    return draw_circle_v_result_ok(env);
}

// # void DrawCircleLines(int centerX, int centerY, float radius, Color color);                         // Draw circle outline
UNIFEX_TERM draw_circle_lines(UnifexEnv *env, int centerX, int centerY, double radius, exColor color){
    DrawCircleLines(centerX, centerY, radius, ToColor(color));
    return draw_circle_lines_result_ok(env);
}

// # void DrawCircleLinesV(Vector2 center, float radius, Color color);                                  // Draw circle outline (Vector version)
UNIFEX_TERM draw_circle_lines_v(UnifexEnv *env, exVector2 center, double radius, exColor color){
    DrawCircleLinesV(ToVector2(center), radius, ToColor(color));
    return draw_circle_lines_v_result_ok(env);
}

// # void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);             // Draw ellipse
UNIFEX_TERM draw_ellipse(UnifexEnv *env, int centerX, int centerY, double radiusH, double radiusV, exColor color){
    DrawEllipse(centerX, centerY, radiusH, radiusV, ToColor(color));
    return draw_ellipse_result_ok(env);
}

// # void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);        // Draw ellipse outline
UNIFEX_TERM draw_ellipse_lines(UnifexEnv *env, int centerX, int centerY, double radiusH, double radiusV, exColor color){
    DrawEllipseLines(centerX, centerY, radiusH, radiusV, ToColor(color));
    return draw_ellipse_lines_result_ok(env);
}

// # void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color); // Draw ring
UNIFEX_TERM draw_ring(UnifexEnv *env, exVector2 center, double inner_radius, double outer_radius, double start_angle, double end_angle, int segments, exColor color){
    DrawRing(ToVector2(center), inner_radius, outer_radius, start_angle, end_angle, segments, ToColor(color));
    return draw_ring_result_ok(env);
}

// # void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);    // Draw ring outline
UNIFEX_TERM draw_ring_lines(UnifexEnv *env, exVector2 center, double inner_radius, double outer_radius, double start_angle, double end_angle, int segments, exColor color){
    DrawRingLines(ToVector2(center), inner_radius, outer_radius, start_angle, end_angle, segments, ToColor(color));
    return draw_ring_lines_result_ok(env);
}

// # void DrawRectangle(int posX, int posY, int width, int height, Color color);                        // Draw a color-filled rectangle
UNIFEX_TERM draw_rectangle(UnifexEnv *env, int posX, int posY, int width, int height, exColor color){
    DrawRectangle(posX, posY, width, height, ToColor(color));
    return draw_rectangle_result_ok(env);
}

// # void DrawRectangleV(Vector2 position, Vector2 size, Color color);                                  // Draw a color-filled rectangle (Vector version)
UNIFEX_TERM draw_rectangle_v(UnifexEnv *env, exVector2 position, exVector2 size, exColor color){
    DrawRectangleV(ToVector2(position), ToVector2(size), ToColor(color));
    return draw_rectangle_v_result_ok(env);
}

// # void DrawRectangleRec(Rectangle rec, Color color);                                                 // Draw a color-filled rectangle
UNIFEX_TERM draw_rectangle_rec(UnifexEnv *env, exRectangle rec, exColor color){
    DrawRectangleRec(ToRectangle(rec), ToColor(color));
    return draw_rectangle_rec_result_ok(env);
}

// # void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);                 // Draw a color-filled rectangle with pro parameters
UNIFEX_TERM draw_rectangle_pro(UnifexEnv *env, exRectangle rec, exVector2 origin, double rotation, exColor color){
    DrawRectanglePro(ToRectangle(rec), ToVector2(origin), rotation, ToColor(color));
    return draw_rectangle_pro_result_ok(env);
}

// # void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a vertical-gradient-filled rectangle
UNIFEX_TERM draw_rectangle_gradient_v(UnifexEnv *env, int posX, int posY, int width, int height, exColor color1, exColor color2){
    DrawRectangleGradientV(posX, posY, width, height, ToColor(color1), ToColor(color2));
    return draw_rectangle_gradient_v_result_ok(env);
}

// # void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a horizontal-gradient-filled rectangle
UNIFEX_TERM draw_rectangle_gradient_h(UnifexEnv *env, int posX, int posY, int width, int height, exColor color1, exColor color2){
    DrawRectangleGradientH(posX, posY, width, height, ToColor(color1), ToColor(color2));
    return draw_rectangle_gradient_h_result_ok(env);
}

// # void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);       // Draw a gradient-filled rectangle with custom vertex colors
UNIFEX_TERM draw_rectangle_gradient_ex(UnifexEnv *env, exRectangle rec, exColor col1, exColor col2, exColor col3, exColor col4){
    DrawRectangleGradientEx(ToRectangle(rec), ToColor(col1), ToColor(col2), ToColor(col3), ToColor(col4));
    return draw_rectangle_gradient_ex_result_ok(env);
}

// # void DrawRectangleLines(int posX, int posY, int width, int height, Color color);                   // Draw rectangle outline
UNIFEX_TERM draw_rectangle_lines(UnifexEnv *env, int posX, int posY, int width, int height, exColor color){
    DrawRectangleLines(posX, posY, width, height, ToColor(color));
    return draw_rectangle_lines_result_ok(env);
}

// # void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);                            // Draw rectangle outline with extended parameters
UNIFEX_TERM draw_rectangle_lines_ex(UnifexEnv *env, exRectangle rec, double line_thick, exColor color){
    DrawRectangleLinesEx(ToRectangle(rec), line_thick, ToColor(color));
    return draw_rectangle_lines_ex_result_ok(env);
}

// # void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);              // Draw rectangle with rounded edges
UNIFEX_TERM draw_rectangle_rounded(UnifexEnv *env, exRectangle rec, double roundness, int segments, exColor color){
    DrawRectangleRounded(ToRectangle(rec), roundness, segments, ToColor(color));
    return draw_rectangle_rounded_result_ok(env);
}

// # void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color); // Draw rectangle with rounded edges outline
UNIFEX_TERM draw_rectangle_rounded_lines(UnifexEnv *env, exRectangle rec, double roundness, int segments, double line_thick, exColor color){
    DrawRectangleRoundedLines(ToRectangle(rec), roundness, segments, line_thick, ToColor(color));
    return draw_rectangle_rounded_lines_result_ok(env);
}

// # void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                // Draw a color-filled triangle (vertex in counter-clockwise order!)
UNIFEX_TERM draw_triangle(UnifexEnv *env, exVector2 v1, exVector2 v2, exVector2 v3, exColor color){
    DrawTriangle(ToVector2(v1), ToVector2(v2), ToVector2(v3), ToColor(color));
    return draw_triangle_result_ok(env);
}

// # void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                           // Draw triangle outline (vertex in counter-clockwise order!)
UNIFEX_TERM draw_triangle_lines(UnifexEnv *env, exVector2 v1, exVector2 v2, exVector2 v3, exColor color){
    DrawTriangleLines(ToVector2(v1), ToVector2(v2), ToVector2(v3), ToColor(color));
    return draw_triangle_lines_result_ok(env);
}

// # void DrawTriangleFan(Vector2 *points, int pointCount, Color color);                                // Draw a triangle fan defined by points (first vertex is the center)
UNIFEX_TERM draw_triangle_fan(UnifexEnv *env, exVector2* points, unsigned int points_length, int point_count, exColor color){
    Vector2 converted[points_length];
    for(unsigned int i = 0; i < points_length; i++){
        converted[i] = ToVector2(points[i]);
    }
    DrawTriangleFan(converted, point_count, ToColor(color));
    return draw_triangle_fan_result_ok(env);
}

// # void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);                              // Draw a triangle strip defined by points
UNIFEX_TERM draw_triangle_strip(UnifexEnv *env, exVector2* points, unsigned int points_length, int point_count, exColor color){
    Vector2 converted[points_length];
    for(unsigned int i = 0; i < points_length; i++){
        converted[i] = ToVector2(points[i]);
    }
    DrawTriangleStrip(converted, point_count, ToColor(color));
    return draw_triangle_strip_result_ok(env);
}

// # void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);               // Draw a regular polygon (Vector version)
UNIFEX_TERM draw_poly(UnifexEnv *env, exVector2 center, int sides, double radius, double rotation, exColor color){
    DrawPoly(ToVector2(center), sides, radius, rotation, ToColor(color));
    return draw_poly_result_ok(env);
}

// # void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);          // Draw a polygon outline of n sides
UNIFEX_TERM draw_poly_lines(UnifexEnv *env, exVector2 center, int sides, double radius, double rotation, exColor color){
    DrawPolyLines(ToVector2(center), sides, radius, rotation, ToColor(color));
    return draw_poly_lines_result_ok(env);
}

// # void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color); // Draw a polygon outline of n sides with extended parameters
UNIFEX_TERM draw_poly_lines_ex(UnifexEnv *env, exVector2 center, int sides, double radius, double rotation, double line_thick, exColor color){
    DrawPolyLinesEx(ToVector2(center), sides, radius, rotation, line_thick, ToColor(color));
    return draw_poly_lines_ex_result_ok(env);
}