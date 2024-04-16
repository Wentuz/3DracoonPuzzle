extends SpringArm3D

var sensitivity = 0.05
var prev_mouse_position = Vector2.ZERO

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	
	if event is InputEventMouseMotion:
		
		var mouse_delta = event.relative
		rotate_y(mouse_delta.x * sensitivity)
		



