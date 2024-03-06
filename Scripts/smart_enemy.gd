extends CharacterBody2D


const speed = 200

@export var player : Node2D

@onready var nav_agent = $NavigationAgent2D as NavigationAgent2D



func _physics_process(_delta : float):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func makepath():
	nav_agent.target_position = player.global_position

func _on_timer_timeout():
	makepath()


func _on_timer_2_timeout():
	print(velocity)
	#print(dir)
	print(nav_agent.get_next_path_position())
	
