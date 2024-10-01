class_name HUD
extends Control
## Displays the players' scores
##
## The score of each player is shown as a number in the middle of their 
## respective section


# Variables
@onready var left_score = $LeftScore
@onready var right_score = $RightScore


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_game_score_updated(left, right):
	left_score.set_text(str(left))
	right_score.set_text(str(right))
