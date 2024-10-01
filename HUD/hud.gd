class_name HUD
extends Control
## Displays the players' scores
##
## The score of each player is shown as a number in the middle of their 
## respective section


# Variables
@onready var left_score = $LeftScore
@onready var right_score = $RightScore


func _on_game_score_updated(left, right):
	left_score.set_text(str(left))
	right_score.set_text(str(right))
