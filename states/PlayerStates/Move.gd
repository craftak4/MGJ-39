class_name MoveState
extends PlayerState

func Enter():
	super()
	plr.animation.play(anim_names.get("move"))
 
func Exit(state:State):
	super(state)
	if state is PlayerState: (state as PlayerState).flippedSprite = flippedSprite

func ProcessPhysics(delta:float):
	ProcessMovement(delta)
	if GetDir() == 0: return idle
	DeterminateFlip()
	super(delta)

func ProcessMovement(delta:float):
	plr.velocity.x = lerp(plr.velocity.x,(GetDir() * playerSpeed * delta),acceleration)
