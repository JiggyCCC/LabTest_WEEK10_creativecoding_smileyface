extends Node2D

var color = Color.from_hsv(randf(), 0.8, 1.0)
var color2 = Color.from_hsv(randf(), 2.0, 20.0)

func _draw():
	# Face (yellow circle)
	draw_circle(Vector2(200, 200), 100, color, false)

	# Eyes (black circles)
	draw_circle(Vector2(160, 170), 10, color2)
	draw_circle(Vector2(240, 170), 10, color2)

	# Smile (arc)
	draw_arc(
		Vector2(200, 200), # center
		60,                # radius
		deg_to_rad(20),    # start angle
		deg_to_rad(160),   # end angle
		32,                # points
		Color.BLUE,
		4                  # width
	)
