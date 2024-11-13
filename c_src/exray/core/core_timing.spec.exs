module Exray.Core.Timing.Loader
interface [NIF, CNode]
callback :load
state_type "State"

spec set_target_fps(fps :: int) :: :ok
spec get_frame_time() :: frame_time :: float
spec get_time() :: time :: float
spec get_fps() :: fps :: int
