extends Area3D

var teleport_location = Vector3(0,20,0)

func _on_body_entered(body):
	body.global_position = teleport_location
