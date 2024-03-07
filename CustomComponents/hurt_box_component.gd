class_name HurtBoxComponent extends Area2D


@export var health_component : HealthComponent



func hurt(damage: float):
	health_component.decrease(damage)
	pass


func _ready():
	pass

func _process(_delta):
	pass
	



func _on_area_entered(area):
	if (area is HitBoxComponent) and area.get_parent() != get_parent():
		area = area as HitBoxComponent
		hurt(area.damage)
	
	pass # Replace with function body.
