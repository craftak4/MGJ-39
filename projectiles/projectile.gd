class_name Projectile
extends Node2D

var dir:float

@export var type:ProjectileBase
@export var sprite:Sprite2D
@export var hit:Area2D
@export var dmg:int
var hitted:bool
var DetectedBody:bool = false

func _ready() -> void:
	type.Enter(self)

func _physics_process(delta: float) -> void:
	if !hitted:
		hitted = type.ProcessPhysics(self)
	else:
		type.Exit(self)

func Area2Dbody(body: Node2D) -> void:
	if body is Character: 
		DetectedBody = true
		(body as Character).health -= dmg
