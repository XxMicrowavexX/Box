extends RigidBody2D

export (int) var speed = 100

var vec = Vector2()

func get_input(delto):
	if Input.is_action_pressed('ui_right'):
		$Animation.play("Move")
		linear_velocity.x += 1
	elif Input.is_action_pressed('ui_left'):
		$Animation.play("Move")
		linear_velocity.x -= 1
	elif Input.is_action_pressed('ui_down'):
		$Animation.play("Move")
		linear_velocity.y += 1
	elif Input.is_action_pressed('ui_up'):
		$Animation.play("Move")
		linear_velocity.y -= 10
	else:
		$Animation.play("Idle")
		linear_velocity.y += 1
	linear_velocity = linear_velocity.normalized() * speed

func _process(delta):
	linear_velocity = Vector2()
	get_input(delta)
