extends Node

@onready var parent = $".."

func _ready() -> void:
	parent.connect("signal_move", Callable(self, "start_move"))

func start_move():
	
	process_move(parent.speed, ((parent.player_node.global_position - parent.global_position).normalized()), parent.player_node.global_position + ((parent.player_node.global_position - parent.global_position).normalized()) * (-parent.player_node.radius + 10))

func process_move(speed, direction, metka):
	while (metka - parent.global_position).length() > 50:
		parent.global_position += direction * speed
		await get_tree().create_timer(0.01).timeout
	end_move()

func end_move():
	parent.signal_state_machine.emit("Attack")
