module Exray.Core.Timing.Loader
interface [NIF, CNode]
callback :load
state_type "State"

spec set_target_fps(fps :: int) :: {:ok :: label}
spec get_frame_time() :: {:ok :: label, frame_time :: float}
spec get_time() :: {:ok :: label, time :: float}
spec get_fps() :: {:ok :: label, fps :: int}
