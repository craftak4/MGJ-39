class_name Player
extends Character

@export var sprite:AnimatedSprite2D
@export var animation:AnimationPlayer
@export var projectileSpawner:Marker2D

func _physics_process(delta: float) -> void:
	print(health)
	if health <= 0:
		queue_free()
		get_tree().change_scene_to_file("res://scenes/UI/death.tscn")
