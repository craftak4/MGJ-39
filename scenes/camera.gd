class_name Camera
extends Camera2D

@onready var plr:Player = get_tree().get_first_node_in_group("player")

func _physics_process(delta: float) -> void:
	global_position.y = plr.global_position.y
