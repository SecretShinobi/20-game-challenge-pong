extends Node2D

# Signals


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Signal Methods


func _on_game_round_finished(player):
	print(player )
