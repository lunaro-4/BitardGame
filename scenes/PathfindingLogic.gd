extends Node2D


# Чтобы запустить поиск пути, добавь это сцену в сцену врага,
# И добать вот эти строчки:

"""

@onready var pathfinder = $PathfindingLogic

# Путь, по которому будет следовать сущность
@onready var direction = pathfinder.target_path_direction

func _ready():
	pathfinder.target =  <ЦЕЛЬ ПОИСКА ПУТИ>
	pathfinder.pathfinding_init()


"""



# Вход для цели пасфайндинга
@export var target : Node2D

# Выход для пути (куда должна двигаться сущность)
@export var target_path_direction : Vector2

# Задаем названия для локальных нодов

@onready var nav_agent = $NavigationAgent2D as NavigationAgent2D

@onready var pathfinding_timer = $UpdatePathTimer as Timer



	
func makepath():
	nav_agent.target_position = target.global_position
	target_path_direction = to_local(nav_agent.get_next_path_position()).normalized()


# Обновляет путь, частота регулируется настройками таймера
func _on_path_update_timeout():
	makepath()

# на случай если нужно прекратить поиск пути
func stop_pathfinding():
	pathfinding_timer.stop()

# ...или возобновить поиск пути
func start_pathfinding():
	pathfinding_timer.start()

func pathfinding_init():
	start_pathfinding()
	makepath()

func _ready():
	pass 


func _process(_delta):
	pass
