module Exray.Shapes.Collision.Loader
interface [NIF, CNode]
callback :load
state_type "State"

# // Basic shapes collision detection functions
# bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);                                           // Check collision between two rectangles
# bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);        // Check collision between two circles
# bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);                         // Check collision between circle and rectangle
# bool CheckCollisionPointRec(Vector2 point, Rectangle rec);                                         // Check if point is inside rectangle
# bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);                       // Check if point is inside circle
# bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);               // Check if point is inside a triangle
# bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int pointCount);                      // Check if point is within a polygon described by array of vertices
# bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint); // Check the collision between two lines defined by two points each, returns collision point by reference
# bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);                // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
# Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);                                         // Get collision rectangle for two rectangles collision
