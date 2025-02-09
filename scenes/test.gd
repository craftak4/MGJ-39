extends Node2D

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("shoot"):
		var p:Projectile = (load("res://projectiles/basic_projectile.tscn") as PackedScene).instantiate()
		add_child(p)
