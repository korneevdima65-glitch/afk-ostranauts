extends Node

var current_level = 1
var max_unlocked_level = 1

var gold = 0
var hero_damage = 5

# Какой корабль сейчас выбран
var selected_ship = 0

# Все корабли игрока
var ships = [
	{
		"name": "Штурмовик",
		"level": 1,
		"rarity": "Обычный",
		"stars": 0,

		"hp": 100,
		"damage": 5,
		"speed": 1.0
	},

	{
		"name": "Фрегат",
		"level": 1,
		"rarity": "Редкий",
		"stars": 0,

		"hp": 120,
		"damage": 4,
		"speed": 0.8
	},

	{
		"name": "Дрон",
		"level": 1,
		"rarity": "Обычный",
		"stars": 0,

		"hp": 80,
		"damage": 7,
		"speed": 1.5
	},

	{
		"name": "Крейсер",
		"level": 1,
		"rarity": "Эпический",
		"stars": 0,

		"hp": 200,
		"damage": 10,
		"speed": 0.5
	},

	{
		"name": "Разведчик",
		"level": 1,
		"rarity": "Эпический",
		"stars": 0,

		"hp": 50,
		"damage": 0.5,
		"speed": 2
	},

	{
		"name": "Эсминец",
		"level": 1,
		"rarity": "Эпический",
		"stars": 0,

		"hp": 1000,
		"damage": 100,
		"speed": 0.1
	}
]
