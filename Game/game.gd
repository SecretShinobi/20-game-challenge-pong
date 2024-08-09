class_name Game
extends Node2D


# Variables
var left_score: int = 0
var right_score: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_left_net_body_entered(body):
	right_score += 1


func _on_right_net_body_entered(body):
	left_score += 1
