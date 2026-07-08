extends Control

func _ready():
	$TopBar/GoldLabel.text = "Золото: " + str(GameData.gold)
	$TopBar/ExpLabel.text = "Уровень " + str(GameData.current_level)

func _on_map_button_pressed():
	get_tree().change_scene_to_file("res://scenes/map_screen.tscn")


func _on_ships_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/heroes_screen.tscn")
