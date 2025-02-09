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

func ProcessInput(event:InputEvent):
	if Input.is_action_just_pressed("shoot") && (get_tree().current_scene as Session).CanShoot: 
		return basic_shoot
	super(event)

func ProcessMovement(delta:float):
	plr.velocity.x = lerp(plr.velocity.x,(GetDir() * playerSpeed * delta),acceleration)
