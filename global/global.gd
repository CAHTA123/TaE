extends Node

var game_over = true
var time = 0.0

func _ready():
	timer()

func timer():
	while game_over:
		time += 0.1
		await get_tree().create_timer(0.1).timeout
