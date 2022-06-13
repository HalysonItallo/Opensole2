extends Button


func _on_sair_mouse_entered():
	$Sprite.modulate.r = 0.75;
	$Sprite.modulate.g = 0.75;	
	$Sprite.modulate.b = 0.75;
	$AnimatedSprite.modulate.r = 0.75;
	$AnimatedSprite.modulate.g = 0.75;	
	$AnimatedSprite.modulate.b = 0.75;
	$AnimatedSprite.visible = 1
	$AnimatedSprite.play("btn")
	pass # Replace with function body.


func _on_sair_mouse_exited():
	$Sprite.modulate.r = 1;
	$Sprite.modulate.g = 1;	
	$Sprite.modulate.b = 1;
	$AnimatedSprite.modulate.r = 1;
	$AnimatedSprite.modulate.g = 1;	
	$AnimatedSprite.modulate.b = 1;
	$AnimatedSprite.visible = 0
	$AnimatedSprite.stop()
	pass # Replace with function body.


func _on_sair_pressed():
	$Sprite.modulate.r = 0.6;
	$Sprite.modulate.g = 0.6;	
	$Sprite.modulate.b = 0.6;
	$AnimatedSprite.modulate.r = 0.6;
	$AnimatedSprite.modulate.g = 0.6;	
	$AnimatedSprite.modulate.b = 0.6;
	get_tree().change_scene("res://scenes/toQuit.tscn")
	pass # Replace with function body.
