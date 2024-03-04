extends Node

@onready var pause_menu = $"../Node2"

var get_paused: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Exit"):
		get_paused = !get_paused
	if get_paused == true:
		get_tree().paused = true
		pause_menu.show()
	else:
		get_tree().paused = false
		pause_menu.hide()


func _on_mainmenu_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_exit_pressed():
	get_tree().quit()


func _on_entergame_pressed():
	get_paused = !get_paused
