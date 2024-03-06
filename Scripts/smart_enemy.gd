extends CharacterBody2D


const speed = 200

@export var player : Node2D

#@onready var nav_agent = $NavigationAgent2D as NavigationAgent2D
@onready var pathfinder = $PathfindingLogic
@onready var direction = pathfinder.target_path_direction

func _ready():
	pathfinder.target = player
	pathfinder.pathfinding_init()
	


func _physics_process(_delta : float):
	direction = pathfinder.target_path_direction
	velocity = direction * speed
	move_and_slide()
	

# debug func
#func _on_timer_timeout():
	#print(velocity)
	#print(direction)
	##print(nav_agent.get_next_path_position())
	



