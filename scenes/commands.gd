class_name Commands
extends LineEdit

@onready var plr:Player = get_tree().get_first_node_in_group("player")

func _input(event: InputEvent) -> void:
	if !Input.is_action_just_pressed("cmd"): return
	grab_focus()


var CommandsDB:Dictionary = {
	"exit" : func(): get_tree().change_scene_to_file("res://scenes/UI/menu.tscn"),
	"el-shock" : func(): 
		var pr:Projectile = (load(get_tree().root.get_node("ProjectileDB").Projectiles.get("shock")) as PackedScene).instantiate()
		get_tree().current_scene.add_child(pr)
		pr.global_position = plr.projectileSpawner.global_position,
	"enm876" : func(): 
		var pr:Projectile = (load(get_tree().root.get_node("ProjectileDB").Projectiles.get("enemy")) as PackedScene).instantiate()
		get_tree().current_scene.add_child(pr)
		pr.global_position = plr.projectileSpawner.global_position,
	"big-red-missile" : func():
		var pr:Projectile = (load(get_tree().root.get_node("ProjectileDB").Projectiles.get("missile")) as PackedScene).instantiate()
		get_tree().current_scene.add_child(pr)
		pr.global_position = plr.projectileSpawner.global_position,
	"advan" : func():
		var pr:Projectile = (load(get_tree().root.get_node("ProjectileDB").Projectiles.get("adv")) as PackedScene).instantiate()
		get_tree().current_scene.add_child(pr)
		pr.global_position = plr.projectileSpawner.global_position,
}

func commnad_submit(new_text: String) -> void:
	text = ""
	var theFunction = CommandsDB.get(new_text.to_lower())
	if theFunction != null: 
		theFunction.call()
	if is_inside_tree(): release_focus()
