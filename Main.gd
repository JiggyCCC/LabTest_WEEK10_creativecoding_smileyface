extends Node2D

var circles_position = []
var smiley_face_count = 40



func _ready() -> void:
	randomize()
	generate_circles()
	queue_redraw()
	
func _input(event):
	if event is InputEventMouseMotion:
		generate_circles()
		queue_redraw()
		
func generate_circles():
	circles_position.clear()

	for i in range(smiley_face_count):
		var pos = Vector2(
			randf_range(0, get_viewport_rect().size.x),
			randf_range(0, get_viewport_rect().size.y)
		)
		circles_position.append(pos)
		
func _draw():
	for pos in circles_position:
		draw_smileyface(pos)

func draw_smileyface(center):
	
	# var eyes_count = range(2) #need to link to face position
	var radius = randf_range(20, 90)
	var face_color = Color.from_hsv(randf(), 0.8, 1.0)
	
	draw_circle(center, radius * 0.7, face_color, false)


	

	
	
		
	
	

	

#func _draw():
	#var width = 1152
	#var height = 648
	#
	#var colors = [
		#Color.RED,
		#Color.ORANGE,
		#Color.YELLOW,
		#Color.LIME,
		#Color.GREEN,
		#Color.GREEN,
		#Color.TEAL,
		#Color.PINK,
		#Color.BLUE,
		#Color.PURPLE
	#]
		#
	#var j = 0
#
	#var totalEL = colors.size()
	#var xAXIS = width/totalEL*j
	#var yAXIS = height/totalEL*j 
	#
		#
	#for i in colors:
		#draw_circle(Vector2(1152/2, 648/2), 100, colors[j])
		#j = j + 1
		
#func _draw():
	#for pos in flower_positions:
		#draw_flower(pos)
#
#func draw_flower(center):
#
	#var petal_count = randi_range(6, 12)
	#var radius = randf_range(8, 20)
#
	#var petal_color = Color.from_hsv(randf(), 0.8, 1.0)
	#var center_color = Color(1, 0.8, 0)
#
	#for i in range(eyes_count):
##
		#
	#var angle = i * TAU / petal_count
##
		#var petal_pos = center + Vector2(
			#cos(angle) * radius,
			#sin(angle) * radius
		#)
#
		#draw_circle(petal_pos, radius * 0.6, petal_color)
#
	#draw_circle(center, radius * 0.7, center_color)
#
	#var stem_end = center + Vector2(0, randf_range(30, 80))
	#draw_line(center, stem_end, Color(0, 0.6, 0), 2)
