extends Area2D

export(PackedScene) var target_scene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input (event):
	if !target_scene:
		print("no scene in this door")
		return
	if get_overlapping_bodies().size() > 0:
		next_level()

func next_level():
	var ERR = get_tree().change_scene_to(target_scene)
	
