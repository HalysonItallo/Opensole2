extends KinematicBody2D

export (int) var speed = 350

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x +=1
		$spr_personagem.flip_h = false
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$spr_personagem.flip_h = true
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	else: 
		velocity.y += 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
