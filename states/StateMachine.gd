class_name StateMachine
extends Node

var CurrentState:State
@export var StartingState:State

func _ready() -> void:
	ChangeState(StartingState)

func _process(delta: float) -> void:
	ChangeState(CurrentState.Process(delta))

func _input(event: InputEvent) -> void:
	ChangeState(CurrentState.ProcessInput(event))

func _physics_process(delta: float) -> void:
	ChangeState(CurrentState.ProcessPhysics(delta))

func ChangeState(state:State):
	if state == null: return
	if CurrentState != null: CurrentState.Exit(state)
	state.Enter()
	CurrentState = state
