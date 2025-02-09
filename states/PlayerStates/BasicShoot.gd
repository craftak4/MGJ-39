class_name BasicShootState
extends PlayerState

var Shooted:bool = false

func Enter():
	var pr:Projectile = (load(projectileDB.Projectiles.get("basic")) as PackedScene).instantiate()
	get_tree().current_scene.add_child(pr)
	pr.global_position = plr.projectileSpawner.global_position
	Shooted = true
	(get_tree().current_scene as Session).CanShoot = false
	((get_tree().current_scene as Session).get_node("Cooldown") as Timer).start()

func Exit(state:State):
	super(state)
	if state is PlayerState: (state as PlayerState).flippedSprite = flippedSprite

func ProcessPhysics(delta:float):
	if Shooted:
		if GetDir() == 0: 
			return idle
		else: 
			return move
	super(delta)
