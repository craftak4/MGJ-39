extends ProgressBar

func _process(delta: float) -> void:
	value = get_tree().get_first_node_in_group("player").health
