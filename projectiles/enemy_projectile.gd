class_name EnemyProjectile
extends ProjectileBase

func ProcessPhysics(projectile:Projectile) -> bool:
	Move(projectile,6)
	if projectile.DetectedBody:
		return true
	return super(projectile)
