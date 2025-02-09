class_name Session
extends Node2D

var CanShoot = true

func _ready() -> void:
	GenerateEnemy()

func GenerateEnemy():
	var en:Enemy = (load("res://scenes/characters/enemy.tscn") as PackedScene).instantiate()
	en.global_position = Vector2(randi_range(-87,87),-48)
	add_child(en)

func _process(delta: float) -> void:
	if get_tree().get_nodes_in_group("enemy") == []: get_tree().change_scene_to_file("res://scenes/UI/control.tscn")


func reset_shooting() -> void:
	CanShoot = true
