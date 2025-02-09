class_name EletricProjectile
extends ProjectileBase

func ProcessPhysics(projectile:Projectile) -> bool:
	Move(projectile,3)
	if projectile.DetectedBody:
		return true
	return super(projectile)
