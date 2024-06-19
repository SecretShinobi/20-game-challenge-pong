class_name Ball
extends CharacterBody2D
## A ball that is bounced around on the screen in a top-down manner
##
## This is the ball that is bounced around between the two players in the pong
## game. The movement and behavior of the ball can be adjusted here


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(-500.0, 0.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		# Change the bounce angle if ball hits paddle based on dist. from center
		if collision.get_collider() is CharacterBody2D:
			print(collision.get_position())
