extends RigidBody2D

const speed: float =100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_level_follow_player(direction):
	linear_velocity = direction*speed
	pass # Replace with function body.




#func _on_body_entered(body):
	#if body.is_in_group("player"):
		#print("hit")
		#queue_free()
