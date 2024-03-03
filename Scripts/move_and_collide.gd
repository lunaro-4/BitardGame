extends AnimatableBody2D

var velocity: Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = 100
	move_and_collide(velocity * delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
