module(Exray.Core.FrameControl.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

spec(swap_screen_buffer() :: :ok)
spec(poll_input_events() :: :ok)
spec(wait_time(seconds :: float) :: :ok)
