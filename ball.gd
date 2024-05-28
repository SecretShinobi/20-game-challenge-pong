extends RigidBody2D

# Constants
const START_POSITION = Vector2(400.0, 520.0)

# Variables
var direction = Vector2(-1, 0)
@export var speed = 500

# Signal Methods
func _on_main_reset():
	print("game reset")
	set_position(START_POSITION)
	set_linear_velocity(Vector2(0.0, 0.0))


func _on_main_start():
	print("game start")
	set_position(START_POSITION)
	apply_central_impulse(Vector2(250.0, 0.0))
