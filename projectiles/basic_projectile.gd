class_name BasicProjectile
extends ProjectileBase

func ProcessPhysics(projectile:Projectile) -> bool:
	Move(projectile,5)
	if projectile.DetectedBody:
		return true
	return super(projectile)
