class_name PongGame
extends Node2D


# Variables
var left_score: int = 0
var right_score: int = 0


# Signals
signal score_updated(left, right)


func _on_left_net_body_entered(body):
	right_score += 1
	score_updated.emit(left_score, right_score)


func _on_right_net_body_entered(body):
	left_score += 1
	score_updated.emit(left_score, right_score)
