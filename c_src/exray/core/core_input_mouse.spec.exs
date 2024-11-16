module(Exray.Core.Input.Mouse.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec(mouse_button_is_pressed(button :: int) :: is_pressed :: bool)
spec(mouse_button_is_down(button :: int) :: is_down :: bool)
spec(mouse_button_is_released(button :: int) :: is_released :: bool)
spec(mouse_button_is_up(button :: int) :: is_up :: bool)

spec(get_mouse_x() :: mouse_x :: int)
spec(get_mouse_y() :: mouse_y :: int)
spec(get_mouse_position() :: mouse_position :: exVector2)
spec(get_mouse_delta() :: mouse_delta :: exVector2)

spec(set_mouse_position(x :: int, y :: int) :: :ok)
spec(set_mouse_offset(offset_x :: int, offset_y :: int) :: :ok)
spec(set_mouse_scale(scale_x :: float, scale_y :: float) :: :ok)

spec(get_mouse_wheel_move() :: wheel_movement :: float)
spec(get_mouse_wheel_move_v() :: wheel_movement :: exVector2)

spec(set_mouse_cursor(cursor :: int) :: :ok)
