module(Exray.Core.Screenspace.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec(get_mouse_ray(mouse_position :: exVector2, camera :: exCamera3D) :: mouse_ray :: exRay)
spec(get_camera_matrix(camera :: exCamera3D) :: camera_matrix :: exMatrix)
spec(get_camera_matrix_2d(camera :: exCamera2D) :: camera_matrix :: exMatrix)

spec(
  get_world_to_screen(position :: exVector3, camera :: exCamera3D) :: world_to_screen :: exVector2
)

spec(
  get_screen_to_world_2d(position :: exVector2, camera :: exCamera2D) ::
    screen_to_world :: exVector2
)

spec(
  get_world_to_screen_ex(position :: exVector3, camera :: exCamera3D, width :: int, height :: int) ::
    world_to_screen_ex :: exVector2
)

spec(
  get_world_to_screen_2d(position :: exVector2, camera :: exCamera2D) ::
    world_to_screen_2d :: exVector2
)
