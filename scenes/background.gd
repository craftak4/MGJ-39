extends Node2D


func ResetPointGetBody(body: Node2D) -> void:
	if body is Player: global_position = Vector2.ZERO

var speed:int = 100 #60

func Move(delta:float):
	global_position.y += delta * speed * 1

func _physics_process(delta: float) -> void:
	Move(delta)
