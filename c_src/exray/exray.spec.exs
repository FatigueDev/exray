module Exray
interface [NIF, CNode]
callback :load
callback :upgrade
state_type "State"
