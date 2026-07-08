extends Control

var hero1_hp = 100
var hero2_hp = 100

var enemy1_hp = 0
var enemy2_hp = 0

func _ready():
	
	enemy1_hp = 100 + GameData.current_level * 10
	enemy2_hp = 100 + GameData.current_level * 10

	$BattleArea/Enemy1HP.max_value = enemy1_hp
	$BattleArea/Enemy2HP.max_value = enemy2_hp

	$BattleArea/Enemy1HP.value = enemy1_hp
	$BattleArea/Enemy2HP.value = enemy2_hp
	$BattleArea/Hero1HP.max_value = hero1_hp
	$BattleArea/Hero2HP.max_value = hero2_hp
	
	$LevelLabel.text = "Уровень " + str(GameData.current_level)

func _on_battle_timer_timeout():

	if enemy1_hp > 0:
		enemy1_hp -= GameData.hero_damage
	else:
		enemy2_hp -= 5

	if hero1_hp > 0:
		hero1_hp -= 2
	else:
		hero2_hp -= 2

	enemy1_hp = max(enemy1_hp, 0)
	enemy2_hp = max(enemy2_hp, 0)

	hero1_hp = max(hero1_hp, 0)
	hero2_hp = max(hero2_hp, 0)

	$BattleArea/Hero1HP.value = hero1_hp
	$BattleArea/Hero2HP.value = hero2_hp

	$BattleArea/Enemy1HP.value = enemy1_hp
	$BattleArea/Enemy2HP.value = enemy2_hp

	if enemy1_hp == 0 and enemy2_hp == 0:
		$Label.text = "Победа!"
		$BattleTimer.stop()

		GameData.gold += 10
		GameData.current_level += 1

		if GameData.current_level > GameData.max_unlocked_level:
			GameData.max_unlocked_level = GameData.current_level

		#$ContinueButton.visible = true

	if hero1_hp == 0 and hero2_hp == 0:
		$Label.text = "Поражение!"
		$BattleTimer.stop()

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/map_screen.tscn")
