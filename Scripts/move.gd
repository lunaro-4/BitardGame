extends CharacterBody2D

const speed: float = 400

func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):
	
	if Input.is_action_pressed("right"):
		velocity.x = +speed
		velocity.y = 0
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("up"):
		velocity.x = 0
		velocity.y = -speed
	elif Input.is_action_pressed("down"):
		velocity.x = 0
		velocity.y = +speed
	else:
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
func _process(delta):
	#print(str(round(position.x)) + "  " + str(round(position.y)))
	await get_tree().create_timer(2).timeout
