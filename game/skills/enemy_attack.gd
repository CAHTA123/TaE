extends Node

@onready var parent = $".."

func _ready() -> void:
	parent.connect("signal_attack", Callable(self, "start_attack"))

func start_attack():
	process_attack()

func process_attack():
	end_attack()

func end_attack():
	parent.signal_state_machine.emit("Move")
