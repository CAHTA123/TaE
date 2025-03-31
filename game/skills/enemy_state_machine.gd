extends Node

@onready var parent = $".."

func _ready() -> void:
	parent.connect("signal_state_machine", Callable(self, "state_machine"))

func state_machine(state):
	parent.current_state = parent.State[state]
	
	match parent.current_state:
		parent.State.Move:
			parent.signal_move.emit()
		parent.State.Attack:
			pass
		parent.State.Stun:
			pass
