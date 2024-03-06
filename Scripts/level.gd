extends Node2D

#var player = preload("res://scenes/player.tscn")

signal follow_player



func _ready():
	pass
	pass # Replace with function body.
	
func rotate_subject_to_object(subject : Node2D, object : Node2D):
	subject.look_at(object.get_global_position())
	subject.rotation_degrees += 90
	
func get_subject_to_object_direction(subject : Node2D, object : Node2D) -> Vector2:
	return (object.get_global_position() - subject.get_global_position()).normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_subject_to_object($StaticEnemy, $player)
	var to_player_direction = get_subject_to_object_direction($FollowingProj, $player)
	follow_player.emit(to_player_direction)
	pass
		
	
		


func _on_following_proj_body_entered(body):
	if body.is_in_group("player"):
		print("Player reached!")
		queue_free()
	else:
		print("Touch!")
	pass # Replace with function body.
