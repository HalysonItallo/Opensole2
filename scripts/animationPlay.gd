extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("onda")
	pass # Replace with function body.


func _on_AnimatedSprite_animation_finished():
	Global.started = true
	get_tree().change_scene("res://scenes/Main.tscn")
	pass # Replace with function body.
