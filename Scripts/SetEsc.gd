extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_into_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _on_exit_to_table_top_pressed():
	get_tree().quit()


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_togame_pressed():
	get_tree().change_scene_to_file("res://scenes/level.tscn")
