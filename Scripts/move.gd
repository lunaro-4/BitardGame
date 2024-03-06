extends CharacterBody2D

const speed: float = 150
var can_print: bool = true
@onready var _animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	player_movement(delta)


func follow_mouse(_delta):
	pass


func player_movement(_delta):
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("right"):
		velocity.x +=speed
	if Input.is_action_pressed("left"):
		velocity.x -=speed
	if Input.is_action_pressed("up"):
		velocity.y -=speed
	if Input.is_action_pressed("down"):
		velocity.y +=speed
		
	if abs(velocity.x) + abs(velocity.y) == 0:
			_animated_sprite.stop()
	else:
			_animated_sprite.play("PlayerAnimUp")

	move_and_slide()
	
func look_at_coursor():
	look_at(get_global_mouse_position())
	rotation_degrees += 90
	

func _process(_delta):
	look_at_coursor()

	
	#print(str(round(position.x)) + "  " + str(round(position.y)))
	#await get_tree().create_timer(2).timeout




func _on_timer_timeout():
	can_print =true
	pass # Replace with function body.






