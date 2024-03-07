class_name HealthComponent extends Node2D



@export var max_health : int
@export var start_health: float =  max_health
@export var alive : bool = true
var current_health : float = start_health


signal on_death
signal on_health_decrease

func decrease(damage):
	current_health -= damage
	on_health_decrease.emit()
	if current_health < 0:
		alive = false
		on_death.emit()
	pass

func increase(heal):
	current_health += heal
	if current_health > max_health:
		current_health = max_health
	pass



func _ready():
	pass 



