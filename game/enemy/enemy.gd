extends entity

var player_node

var current_state: State = State.Move

enum State {Move, Attack, Stun, Spawn}

signal signal_start
signal signal_attack
signal signal_move
signal signal_state_machine(state)
signal signal_take_damage(damage)

func _ready():
	player_node = get_all_players()
	if player_node != null:
		self.signal_state_machine.emit("Move")

func get_all_players():
	for child in get_tree().current_scene.get_children():
		if child is player:
			return child
	return null
