class_name HurtBoxComponent extends Area2D


@export var health_component : HealthComponent



func hurt():
	
	pass


func _ready():
	pass

func _process(_delta):
	pass
	

func _on_timer_timeout():
	#var all_bodies := get_overlapping_bodies()
	var all_areas := get_overlapping_areas()
	print(all_areas)
	all_areas = all_areas.filter(
		func(area): return area.is_in_group("HitBox")
		).filter(func(area: Area2D): return area.get_parent()!=get_parent()
	)
	print(all_areas)
	#var character_bodies = all_bodies.filter(
		#func(body): return body.is_class("CharacterBody2D")
		#).filter(
			#func(body): return body != get_parent()
		#)
	
	#var character_bodies = all_bodies.filter(
		#func(body): return body.is_class("CharacterBody2D")
		#).filter(
			#func(body): return body != get_parent()
		#)
	pass 
