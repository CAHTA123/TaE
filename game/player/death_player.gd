extends Node

@onready var parent = $".."

func _ready() -> void:
	parent.connect("signal_death", Callable(self, "death"))

func death():
	pass
