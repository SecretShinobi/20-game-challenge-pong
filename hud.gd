extends Control

@onready var player_one_score = get_node("PlayerOneScore")
@onready var player_two_score = get_node("PlayerTwoScore")
@onready var game = get_node("..")


func _on_main_reset():
	player_one_score.set_text(str(game.player_one_score))
	player_two_score.set_text(str(game.player_two_score))
