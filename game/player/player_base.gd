extends entity

class_name player

@onready var area = $Area2D
@onready var shape = $Area2D/CollisionShape2D

var radius = 100
var line_color = Color(1, 0, 0) 
var line_width = 10

func _ready():
	global_position = get_viewport_rect().size / 2

func _draw():
	draw_circle(Vector2.ZERO, radius, line_color, false, line_width)
