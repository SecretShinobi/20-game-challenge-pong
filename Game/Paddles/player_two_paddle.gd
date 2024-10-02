class_name PlayerTwo
extends CharacterBody2D
## This is the class used to configure player two's parameters

const SPEED = 750.0


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("player_two_move_up", "player_two_move_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()


func _on_game_player_scored(left, right):
	set_position(Vector2(750.0, 0.0))
