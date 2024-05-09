extends Area2D
const File_name = "res://Scenes/level_"
func _on_body_entered(body):
	if body.name == "Player":
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		var next_level_path = File_name + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
