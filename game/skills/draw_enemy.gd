extends Node2D

@onready var parent = $".."

var radius = 20
var line_color = Color(0, 1, 0) # Красный
var line_width = 20

func _ready() -> void:
	parent.connect("signal_start", Callable(self, "start_attack"))

func _draw():
	draw_circle(Vector2.ZERO, radius, line_color, false, line_width)
	process_draw()

func process_draw():
	end_draw()

func end_draw():
	pass





















#func _ready() -> void:
	#while true:
		#parent.rotation += 0.3
		#await get_tree().create_timer(0.01).timeout
	#pass



#
#
#var n = 5  # Количество вершин
#var k = 2  # Шаг соединения (для пятиконечной звезды с пересечениями это 2)
#var radius5 = 100.0
#var star_color = Color(1, 1, 0) # Желтый цвет
#
#func _draw():
	#
	#var points7 = PackedVector2Array()
#
	## 1. Вычисляем координаты вершин на окружности
	#for i in range(n):
		#var angle = TAU * float(i) / float(n)
		#var x = radius5 * cos(angle)
		#var y = radius5 * sin(angle)
		#points7.append(Vector2(x, y))
#
	#var star_points = PackedVector2Array()
	#var current_vertex = 0
	##2. Соединяем вершины с шагом k
	#for _i in range(n + 1): #n+1, что бы замкнуть контур
		#star_points.append(points7[current_vertex])
		#current_vertex = (current_vertex + k) % n # % n - для циклического обхода
#
	#draw_polyline(star_points, star_color, 10.0) # Рисуем контур
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#
	#draw_circle(Vector2.ZERO, radius, line_color, false, line_width)
	#var points = PackedVector2Array([Vector2(0, -80),Vector2(-69.28, 40),Vector2(69.28, 40),Vector2(0, -80)])
#
	#var colors = PackedColorArray()
	#colors.append(Color(1, 0, 0))  # Красный (для первой вершины)
	#colors.append(Color(0, 1, 0))  # Зеленый (для второй вершины)
	#colors.append(Color(0, 0, 1))  # Синий (для третьей вершины)
	#colors.append(Color(1, 0, 0))
#
	#var uvs = PackedVector2Array()
	#uvs.append(Vector2(0, 0))      # UV для первой вершины
	#uvs.append(Vector2(0, 1))      # UV для второй вершины
	#uvs.append(Vector2(1, 1))      # UV для третьей вершины
#
	##draw_primitive(points, colors, PackedVector2Array())
#
#
#
	#var points2 = PackedVector2Array([Vector2(0, -80),Vector2(-69.28, 40),Vector2(69.28, 40),Vector2(0, -80)])
#
	#var color = Color(1, 0, 0) # Красный
	#var colors2 = PackedColorArray([color, color, color, color])  # Цвет для каждой вершины
#
	#draw_polyline_colors(points2, colors, 10.0, true) #толщина 2, сглаживание
