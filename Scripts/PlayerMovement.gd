extends KinematicBody2D

export (int) var speed = 100

var vec = Vector2()

func get_input(delto):
	if Input.is_action_pressed('ui_right'):
		$Animation.play("Move")
		vec.x += 1
	elif Input.is_action_pressed('ui_left'):
		$Animation.play("Move")
		vec.x -= 1
	elif Input.is_action_pressed('ui_down'):
		$Animation.play("Move")
		vec.y += 1
	elif Input.is_action_pressed('ui_up'):
		$Animation.play("Move")
		vec.y -= 1
	else:
		$Animation.play("Idle")
	vec = vec.normalized() * speed

func _process(delta):
	vec = Vector2()
	get_input(delta)
	vec = move_and_slide(vec)
