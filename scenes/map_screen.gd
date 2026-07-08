extends Control

func _ready():
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_screen.tscn")

func _on_level_1_button_pressed():
	get_tree().change_scene_to_file("res://scenes/battle_screen.tscn")
