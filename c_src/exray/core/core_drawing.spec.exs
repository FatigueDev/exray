module Exray.Core.Drawing.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec clear_background(color :: exColor) :: :ok

spec begin_drawing() :: :ok
spec end_drawing() :: :ok

spec begin_mode_2d(camera :: exCamera2D) :: :ok
spec end_mode_2d() :: :ok

spec begin_mode_3d(camera :: exCamera3D) :: :ok
spec end_mode_3d() :: :ok

spec begin_texture_mode(target :: exRenderTexture) :: :ok
spec end_texture_mode() :: :ok

spec begin_shader_mode(shader :: exShader) :: :ok
spec end_shader_mode() :: :ok

spec begin_blend_mode(mode :: int) :: :ok
spec end_blend_mode() :: :ok

spec begin_scissor_mode(x :: int, y :: int, width :: int, height :: int) :: :ok
spec end_scissor_mode() :: :ok

## Todo; VR stuff :)
# void BeginVrStereoMode(VrStereoConfig config);              // Begin stereo rendering (requires VR simulator)
# void EndVrStereoMode(void);                                 // End stereo rendering (requires VR simulator)
