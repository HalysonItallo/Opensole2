extends Control

var check = false

func _process(delta):
	if Input.is_action_just_pressed("paused") and check == false:
		get_tree().paused = true
		check = true
		$menuResume/Popup.visible = true
	if $menuResume/Popup/resume.pressed == true and check == true:
		get_tree().paused = false
		check = false
		$menuResume/Popup.visible = false
	if $menuResume/Popup/sair.pressed == true:
		get_tree().paused = false
		get_tree().change_scene("res://scenes/toQuit.tscn")





func _on_resume_mouse_entered():
	$menuResume/Popup/AnimatedSprite.visible = 1
	$menuResume/Popup/AnimatedSprite.play("btn")
	pass # Replace with function body.


func _on_resume_mouse_exited():
	$menuResume/Popup/AnimatedSprite.visible = 0 
	$menuResume/Popup/AnimatedSprite.stop()
	pass # Replace with function body.


func _on_sair_mouse_entered():
	$menuResume/Popup/a2.visible = 1
	$menuResume/Popup/a2.play("btn")
	pass # Replace with function body.


func _on_sair_mouse_exited():
	$menuResume/Popup/a2.visible = 0
	$menuResume/Popup/a2.stop()
	pass # Replace with function body.
