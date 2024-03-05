extends CharacterBody2D



const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_dead: bool = false

func _physics_process(delta):
	pass
	
func _process(delta):
	#look_at()
	var proj_rotation = $EnemyImage/ProjImage.get_global_rotation() 

	$EnemyImage/ProjImage.set_global_rotation(proj_rotation + 12*delta)


	
