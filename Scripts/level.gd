extends Node2D

#var player = preload("res://scenes/player.tscn")

signal follow_player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func rotate_subject_to_object(subject : Node2D, object : Node2D):
	subject.look_at(object.get_global_position())
	
func get_subject_to_object_direction(subject : Node2D, object : Node2D) -> Vector2:
	return (object.get_global_position() - subject.get_global_position()).normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_subject_to_object($Enemy, $player)
	var to_player_direction = get_subject_to_object_direction($FollowingProj, $player)
	follow_player.emit(to_player_direction)
	pass
	



func _on_exit_to_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_exit_pressed():
	get_tree().quit()

	

 
