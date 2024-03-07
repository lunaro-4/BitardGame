extends CharacterBody2D


const speed = 200

@export var player : Node2D

@onready var pathfinder = $PathfindingLogic
@onready var direction = pathfinder.target_path_vector

func _ready():
	pathfinder.target = player
	pathfinder.pathfinding_init()
	


func _physics_process(_delta : float):
	direction = pathfinder.target_path_vector
	velocity = direction * speed
	move_and_slide()




