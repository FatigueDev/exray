module Exray.Shapes.Basic.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# // NOTE: It can be useful when using basic shapes and one single font,
# // defining a font char white rectangle would allow drawing everything in a single draw call
# void SetShapesTexture(Texture2D texture, Rectangle source);       // Set texture and rectangle to be used on shapes drawing
spec set_shapes_texture(texture :: exTexture, source :: exRectangle) :: {:ok :: label}

# // Basic shapes drawing functions
# void DrawPixel(int posX, int posY, Color color);                                                   // Draw a pixel
spec draw_pixel(posX :: int, posY :: int, color :: exColor) :: {:ok :: label}

# void DrawPixelV(Vector2 position, Color color);                                                    // Draw a pixel (Vector version)
spec draw_pixel_v(position :: exVector2, color :: exColor) :: {:ok :: label}

# void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);                // Draw a line
spec draw_line(startPosX :: int, startPosY :: int, endPosX :: int, endPosY :: int, color :: exColor) :: {:ok :: label}

# void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);                                     // Draw a line (using gl lines)
spec draw_line_v(startPos :: exVector2, endPos :: exVector2, color :: exColor) :: {:ok :: label}

# void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);                       // Draw a line (using triangles/quads)
spec draw_line_ex(startPos :: exVector2, endPos :: exVector2, thick :: float, color :: exColor) :: {:ok :: label}

# void DrawLineStrip(Vector2 *points, int pointCount, Color color);                                  // Draw lines sequence (using gl lines)
spec draw_line_strip(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}

# void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);                   // Draw line segment cubic-bezier in-out interpolation
spec draw_line_bezier(startPos :: exVector2, endPos :: exVector2, thick :: float, color :: exColor) :: {:ok :: label}

# void DrawCircle(int centerX, int centerY, float radius, Color color);                              // Draw a color-filled circle
spec draw_circle(centerX :: int, centerY :: int, radius :: float, color :: exColor) :: {:ok :: label}

# void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);      // Draw a piece of a circle
spec draw_circle_sector(center :: exVector2, radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}

# void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color); // Draw circle sector outline
spec draw_circle_sector_lines(center :: exVector2, radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}

# void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);       // Draw a gradient-filled circle
spec draw_circle_gradient(centerX :: int, centerY :: int, radius :: float, color1 :: exColor, color2 :: exColor) :: {:ok :: label}

# void DrawCircleV(Vector2 center, float radius, Color color);                                       // Draw a color-filled circle (Vector version)
spec draw_circle_v(center :: exVector2, radius :: float, color :: exColor) :: {:ok :: label}

# void DrawCircleLines(int centerX, int centerY, float radius, Color color);                         // Draw circle outline
spec draw_circle_lines(centerX :: int, centerY :: int, radius :: float, color :: exColor) :: {:ok :: label}

# void DrawCircleLinesV(Vector2 center, float radius, Color color);                                  // Draw circle outline (Vector version)
spec draw_circle_lines_v(center :: exVector2, radius :: float, color :: exColor) :: {:ok :: label}

# void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);             // Draw ellipse
spec draw_ellipse(centerX :: int, centerY :: int, radiusH :: float, radiusV :: float, color :: exColor) :: {:ok :: label}

# void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);        // Draw ellipse outline
spec draw_ellipse_lines(centerX :: int, centerY :: int, radiusH :: float, radiusV :: float, color :: exColor) :: {:ok :: label}

# void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color); // Draw ring
spec draw_ring(center :: exVector2, inner_radius :: float, outer_radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}

# void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);    // Draw ring outline
spec draw_ring_lines(center :: exVector2, inner_radius :: float, outer_radius :: float, start_angle :: float, end_angle :: float, segments :: int, color :: exColor) :: {:ok :: label}

# void DrawRectangle(int posX, int posY, int width, int height, Color color);                        // Draw a color-filled rectangle
spec draw_rectangle(posX :: int, posY :: int, width :: int, height :: int, color :: exColor) :: {:ok :: label}

# void DrawRectangleV(Vector2 position, Vector2 size, Color color);                                  // Draw a color-filled rectangle (Vector version)
spec draw_rectangle_v(position :: exVector2, size :: exVector2, color :: exColor) :: {:ok :: label}

# void DrawRectangleRec(Rectangle rec, Color color);                                                 // Draw a color-filled rectangle
spec draw_rectangle_rec(rec :: exRectangle, color :: exColor) :: {:ok :: label}

# void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);                 // Draw a color-filled rectangle with pro parameters
spec draw_rectangle_pro(rec :: exRectangle, origin :: exVector2, rotation :: float, color :: exColor) :: {:ok :: label}

# void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a vertical-gradient-filled rectangle
spec draw_rectangle_gradient_v(posX :: int, posY :: int, width :: int, height :: int, color1 :: exColor, color2 :: exColor) :: {:ok :: label}

# void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a horizontal-gradient-filled rectangle
spec draw_rectangle_gradient_h(posX :: int, posY :: int, width :: int, height :: int, color1 :: exColor, color2 :: exColor) :: {:ok :: label}

# void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);       // Draw a gradient-filled rectangle with custom vertex colors
spec draw_rectangle_gradient_ex(rec :: exRectangle, col1 :: exColor, col2 :: exColor, col3 :: exColor, col4 :: exColor) :: {:ok :: label}

# void DrawRectangleLines(int posX, int posY, int width, int height, Color color);                   // Draw rectangle outline
spec draw_rectangle_lines(posX :: int, posY :: int, width :: int, height :: int, color :: exColor) :: {:ok :: label}

# void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);                            // Draw rectangle outline with extended parameters
spec draw_rectangle_lines_ex(rec :: exRectangle, line_thick :: float, color :: exColor) :: {:ok :: label}

# void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);              // Draw rectangle with rounded edges
spec draw_rectangle_rounded(rec :: exRectangle, roundness :: float, segments :: int, color :: exColor) :: {:ok :: label}

# void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color); // Draw rectangle with rounded edges outline
spec draw_rectangle_rounded_lines(rec :: exRectangle, roundness :: float, segments :: int, line_thick :: float, color :: exColor) :: {:ok :: label}

# void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                // Draw a color-filled triangle (vertex in counter-clockwise order!)
spec draw_triangle(v1 :: exVector2, v2 :: exVector2, v3 :: exVector2, color :: exColor) :: {:ok :: label}

# void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                           // Draw triangle outline (vertex in counter-clockwise order!)
spec draw_triangle_lines(v1 :: exVector2, v2 :: exVector2, v3 :: exVector2, color :: exColor) :: {:ok :: label}

# void DrawTriangleFan(Vector2 *points, int pointCount, Color color);                                // Draw a triangle fan defined by points (first vertex is the center)
spec draw_triangle_fan(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}

# void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);                              // Draw a triangle strip defined by points
spec draw_triangle_strip(points :: [exVector2], point_count :: int, color :: exColor) :: {:ok :: label}

# void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);               // Draw a regular polygon (Vector version)
spec draw_poly(center :: exVector2, sides :: int, radius :: float, rotation :: float, color :: exColor) :: {:ok :: label}

# void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);          // Draw a polygon outline of n sides
spec draw_poly_lines(center :: exVector2, sides :: int, radius :: float, rotation :: float, color :: exColor) :: {:ok :: label}

# void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color); // Draw a polygon outline of n sides with extended parameters
spec draw_poly_lines_ex(center :: exVector2, sides :: int, radius :: float, rotation :: float, line_thick :: float, color :: exColor) :: {:ok :: label}
