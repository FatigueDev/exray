module(Exray.Core.Misc.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

spec(take_screenshot(file_name :: string) :: :ok)
spec(set_config_flags(flags :: unsigned) :: :ok)
spec(open_url(url :: string) :: :ok)
