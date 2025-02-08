class_name IdleState
extends PlayerState

func Enter():
	super()
	plr.animation.play(anim_names.get("idle"))

func ProcessInput(event:InputEvent):
	super(event)
	if GetDir() != 0: return move

func ProcessPhysics(delta:float):
	super(delta)
	DeterminateFlip()
	plr.velocity.x = lerp(plr.velocity.x,0.0,deceleration)

func Exit(state:State):
	super(state)
	if state is PlayerState: (state as PlayerState).flippedSprite = flippedSprite
