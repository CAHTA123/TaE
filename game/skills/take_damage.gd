extends Node

@onready var parent = $".."

func _ready() -> void:
	parent.connect("signal_take_damage", Callable(self, "start_take_damage"))

func start_take_damage(damage):
	var current_hp = parent.current_hp
	process_take_damage(current_hp, damage)

func process_take_damage(current_hp, damage):
	current_hp = min(max(current_hp - damage, 0), parent.hp)
	end_take_damage(current_hp)

func end_take_damage(current_hp):
	if current_hp == 0:
		parent.signal_death.emit()
	else:
		parent.current_hp = current_hp
