class_name PlayerState
extends State

@onready var plr:Player = get_tree().get_first_node_in_group("player")
@onready var projectileDB:ProjectileDB = get_tree().root.get_node("ProjectileDB")
var flippedSprite = false

const playerSpeed:int = 5000
const acceleration:float = 0.05
const deceleration:float = 0.05

@export var idle:IdleState
@export var move:MoveState
@export var basic_shoot:BasicShootState

var anim_names:Dictionary = {
	"idle" : "default",
	"move" : "move"
}

func GetDir() -> int:
	return Input.get_axis(input_names.get("left"),input_names.get("right"))

func ProcessPhysics(delta:float):
	super(delta)
	#plr.velocity.y = playerSpeed * delta * -1 
	plr.move_and_slide()

var input_names:Dictionary = {
	"left" : "left",
	"right" : "right"
}

func DeterminateFlip():
	if Input.is_action_pressed(input_names.get("left")): flippedSprite = false
	if Input.is_action_pressed(input_names.get("right")): flippedSprite = true
	plr.sprite.flip_h = flippedSprite
