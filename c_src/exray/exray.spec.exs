module(Exray)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

# CNode stuff
# sends({:heartbeat :: label, alive :: int})
