module Exray.Core.Screenspace.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# Ray GetMouseRay(Vector2 mousePosition, Camera camera);      // Get a ray trace from mouse position
spec get_mouse_ray(mouse_position :: exVector2, camera :: exCamera3D) :: mouse_ray :: exRay

# Matrix GetCameraMatrix(Camera camera);                      // Get camera transform matrix (view matrix)
spec get_camera_matrix(camera :: exCamera3D) :: camera_matrix :: exMatrix

# Matrix GetCameraMatrix2D(Camera2D camera);                  // Get camera 2d transform matrix
spec get_camera_matrix_2d(camera :: exCamera2D) :: camera_matrix :: exMatrix

# Vector2 GetWorldToScreen(Vector3 position, Camera camera);  // Get the screen space position for a 3d world space position
spec get_world_to_screen(position :: exVector3, camera :: exCamera3D) :: world_to_screen :: exVector2

# Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera); // Get the world space position for a 2d camera screen space position
spec get_screen_to_world_2d(position :: exVector2, camera :: exCamera2D) :: screen_to_world :: exVector2

# Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height); // Get size position for a 3d world space position
spec get_world_to_screen_ex(position :: exVector3, camera :: exCamera3D, width :: int, height :: int) :: world_to_screen_ex :: exVector2

# Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera); // Get the screen space position for a 2d camera world space position
spec get_world_to_screen_2d(position :: exVector2, camera :: exCamera2D) :: world_to_screen_2d :: exVector2
