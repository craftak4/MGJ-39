class_name AdvancedProjectile
extends ProjectileBase

func ProcessPhysics(projectile:Projectile) -> bool:
	Move(projectile,4)
	if projectile.DetectedBody:
		return true
	return super(projectile)
