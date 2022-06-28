extends Node2D
var vidas = 7
var state_next = -5
var auxoleo1 = -1
var auxoleo2 = -1
var auxoleo3 = -1
var auxoleo4 = -1
var auxoleo5 = -1

func _on_Area2D_body_entered(body):
	vidas -= 1
	if vidas == 3:
		$CanvasLayer/vidas.play("1")
	if vidas == 2:
		$CanvasLayer/vidas.play("2")
	if vidas == 1:
		$CanvasLayer/vidas.play("3")
	if vidas == 0: 
		$CanvasLayer/vidas.play("4")
		get_tree().reload_current_scene()


func _on_oleo1_body_entered(body):
	auxoleo1 += 1
	state_next += 1
	if auxoleo1 == 1:
		$CanvasLayer/score.clear()
		$CanvasLayer/score.add_text(str(state_next))
		$oleo/AnimatedSprite.queue_free()
		$AudioStreamPlayer2.play()
		auxoleo1 = -1


func _on_oleo2_body_entered(body):
	auxoleo2 += 1
	state_next += 1
	if auxoleo2 == 1:
		$CanvasLayer/score.clear()
		$CanvasLayer/score.add_text(str(state_next))
		$oleo/AnimatedSprite2.queue_free()
		$AudioStreamPlayer2.play()
		auxoleo2 = -1


func _on_oleo3_body_entered(body):
	auxoleo3 += 1
	state_next += 1
	if auxoleo3 == 1:
		$CanvasLayer/score.clear()
		$CanvasLayer/score.add_text(str(state_next))
		$oleo/AnimatedSprite3.queue_free()
		$AudioStreamPlayer2.play()
		auxoleo3 = -1


func _on_oleo4_body_entered(body):
	auxoleo4 += 1
	state_next += 1
	if auxoleo4 == 1:
		$CanvasLayer/score.clear()
		$CanvasLayer/score.add_text(str(state_next))
		$oleo/AnimatedSprite4.queue_free()
		$AudioStreamPlayer2.play()
		auxoleo4 = -1


func _on_oleo5_body_entered(body):
	auxoleo5 += 1
	state_next += 1
	if auxoleo5 == 1:
		$CanvasLayer/score.clear()
		$CanvasLayer/score.add_text(str(state_next))
		$oleo/AnimatedSprite5.queue_free()
		$AudioStreamPlayer2.play()
		auxoleo5 = -1
