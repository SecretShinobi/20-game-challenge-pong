extends Node2D

# Variables
var player_one_score = 0
var player_two_score = 0
var round_finished = false

# Signals
signal reset
signal start

# Called when the node enters the scene tree for the first time.
func _ready():
	start.emit()

# Signal Methods
func _on_player_one_net_body_entered(body):
	player_two_score += 1
	reset.emit()


func _on_player_two_net_body_entered(body):
	player_one_score += 1
	reset.emit()

# Functions
func _process(delta):
	if Input.is_action_pressed("reset"):
		reset.emit()


func _on_reset():
	pass
