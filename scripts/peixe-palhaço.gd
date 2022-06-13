extends RigidBody2D
var cont = 0
var dist = 100
func _process(delta):
	cont = cont + 1
	if cont < dist:
		position.x = position.x + 6
		$"peixe-palhaço-animated".flip_h = true
	if cont > dist:
		position.x = position.x - 6
		$"peixe-palhaço-animated".flip_h = false
		if cont == (2*dist):
			cont = 0
