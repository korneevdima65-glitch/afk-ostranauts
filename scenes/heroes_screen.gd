extends Control

func _ready():

	create_ship_buttons()

	update_ship_info()
	
func select_ship(index):

	GameData.selected_ship = index

	update_ship_info()
	
func create_ship_buttons():

	for i in GameData.ships.size():

		var button = Button.new()

		button.text = GameData.ships[i]["name"]

		button.pressed.connect(
			func():
				select_ship(i)
		)

		$ContentTabs/ShipsTab/ShipsScroll/ShipsGrid.add_child(button)
	
func update_ship_info():

	var ship = GameData.ships[GameData.selected_ship]

	$ShipInfoPanel/ShipNameLabel.text = ship["name"]

	$ShipInfoPanel/LevelLabel.text = "Уровень " + str(ship["level"])

	$ShipInfoPanel/RarityLabel.text = ship["rarity"]

	$ShipInfoPanel/StarsLabel.text = "★" + str(ship["stars"])

	$ShipInfoPanel/HpLabel.text = "HP: " + str(ship["hp"])

	$ShipInfoPanel/DamageLabel.text = "ATK: " + str(ship["damage"])

	$ShipInfoPanel/SpeedLabel.text = "SPD: " + str(ship["speed"])
	
	
	

	
	
	
	
	
	
	
	
	
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_screen.tscn")
