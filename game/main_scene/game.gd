extends Node

@export var pooled_object_scene: PackedScene

var pool_size: int = 50

var object_pool: Array = [] 

func _ready():
	start_spawn()

func start_spawn():
	pool_add()
	process_spawn()

func process_spawn():
	while global.game_over:
		if object_pool.is_empty():
			add_enemy()
		spawn()
		await get_tree().create_timer(min(max(global.time, 0), global.time)).timeout
	end_spawn()

func end_spawn():
	pass

func pool_add():
	for i in pool_size:
		add_enemy()

func add_enemy():
	var obj = pooled_object_scene.instantiate()
	obj.global_position = spawn_on_border()
	obj.visible = false
	object_pool.append(obj)
	get_tree().current_scene.get_node("enemys").add_child(obj)
	obj.signal_death.connect(return_to_pool.bind(obj))

func spawn():
	var obj = object_pool.pop_front()
	obj.visible = true
	obj.signal_start.emit()

func spawn_on_border():
	match randi() % 4 :
		0:  return Vector2(randf_range(-50, 1970), - 50)
		1:  return Vector2(randf_range(-50, 1970), 1130)
		2:  return Vector2(-50, randf_range(-50, 1130))
		3:  return Vector2(1970, randf_range(-50, 1130))

func return_to_pool(obj):
	obj.visible = false
	obj.global_position = Vector2.ZERO 
	object_pool.append(obj)
