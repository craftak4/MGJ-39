class_name ProjectileBase
extends Node

func Enter(projectile:Projectile):
	pass

func Exit(projectile:Projectile):
	projectile.queue_free()

func ProcessPhysics(projectile:Projectile) -> bool:
	return false

func Move(projectile:Projectile, speed:int):
	projectile.global_position += Vector2(0,-speed).rotated(projectile.dir)
