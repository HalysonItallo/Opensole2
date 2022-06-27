extends Area2D


#export(PackedScene) var target_scene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


#export(PackedScene) 
var target_scene = "res://stages/Stage3.tscn"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input (event):
	if !target_scene:
		print("no scene in this door")
		return
	if get_overlapping_bodies().size() > 0:
		#next_level()
		get_tree().change_scene(target_scene)

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)
