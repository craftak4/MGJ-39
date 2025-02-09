extends Node

func _ready() -> void:
	var plr = AudioStreamPlayer.new()
	add_child(plr)
	plr.stream = load("res://assets/sounds/Space Heroes.ogg")
	plr.play()
