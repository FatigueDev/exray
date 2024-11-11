module Exray.Core.Drawing.Loader
interface [NIF, CNode]
callback :load
state_type "State"

Code.require_file("./c_src/exray/exray_types.exs")
unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

spec clear_background(color :: exColor) :: {:ok :: label}

spec begin_drawing() :: {:ok :: label}
spec end_drawing() :: {:ok :: label}

spec begin_mode_2d(camera :: exCamera2D) :: {:ok :: label}
spec end_mode_2d() :: {:ok :: label}

spec begin_mode_3d(camera :: exCamera3D) :: {:ok :: label}
spec end_mode_3d() :: {:ok :: label}

spec begin_texture_mode(target :: exRenderTexture) :: {:ok :: label}
spec end_texture_mode() :: {:ok :: label}

spec begin_shader_mode(shader :: exShader) :: {:ok :: label}
spec end_shader_mode() :: {:ok :: label}

spec begin_blend_mode(mode :: int) :: {:ok :: label}
spec end_blend_mode() :: {:ok :: label}

spec begin_scissor_mode(x :: int, y :: int, width :: int, height :: int) :: {:ok :: label}
spec end_scissor_mode() :: {:ok :: label}

## Todo; VR stuff :)
# void BeginVrStereoMode(VrStereoConfig config);              // Begin stereo rendering (requires VR simulator)
# void EndVrStereoMode(void);                                 // End stereo rendering (requires VR simulator)
