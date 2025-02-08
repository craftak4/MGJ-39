class_name State
extends Node

func Enter() -> void:
	pass

func Exit(new_state:State) -> void:
	pass

func Process(delta:float) -> State:
	return null

func ProcessInput(input:InputEvent) -> State:
	return null

func ProcessPhysics(delta:float) -> State:
	return null
