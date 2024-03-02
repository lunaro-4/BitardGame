extends CharacterBody2D

const speed = 400

func _physics_process(delta):
	player_muvement(delta)

func player_muvement(delta):
	
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