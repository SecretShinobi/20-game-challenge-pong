class_name Game
extends Node2D


# Variables
var left_score: int = 0
var right_score: int = 0


# Signals
signal round_finished(player: String)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_right_net_body_entered(body):
	round_finished.emit("LeftPlayer")


func _on_left_net_body_entered(body):
	round_finished.emit("RightPlayer")
