class_name Enemy
extends Character

func _physics_process(delta: float) -> void:
	if health <= 0:
		queue_free()

func shot() -> void:
		var pr:Projectile = (load(get_tree().root.get_node("ProjectileDB").Projectiles.get("enemy")) as PackedScene).instantiate()
		get_tree().current_scene.add_child(pr)
		pr.global_position = $ProjectileEmitter.global_position
		pr.dir = deg_to_rad(180)
		$Timer.wait_time = randi_range(1,4)
