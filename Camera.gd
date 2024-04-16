extends SpringArm3D

# Sensitivity for mouse movement
var sensitivity = 0.1

# Variables to store previous mouse position
var prev_mouse_position = Vector2.ZERO

func _ready():
	# Hide the mouse cursor
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		# Capture mouse movement
		var mouse_delta = event.relative
		# Rotate the camera based on mouse movement
		rotate_y(mouse_delta.x * sensitivity)
		rotate_x(mouse_delta.y * sensitivity)


