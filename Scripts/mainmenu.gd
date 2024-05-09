class_name Main_Menu
extends Control

@onready var start_game = $"MarginContainer/VBoxContainer/GridContainer/Start Game" as Button
@onready var quit = $MarginContainer/VBoxContainer/GridContainer/Quit as Button
@onready var start_level = preload("res://Scenes/level_1.tscn") as PackedScene

func _ready():
	start_game.button_down.connect(on_start_down)
	quit.button_down.connect(on_exit_down)
	
func on_start_down() -> void:
	get_tree().change_scene_to_packed(start_level)
func on_exit_down() -> void:
	get_tree().quit()


