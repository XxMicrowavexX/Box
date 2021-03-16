extends RigidBody2D

export (int) var speed = 100

var vec = Vector2()

func get_input(delto):
	if Input.is_action_pressed('ui_right'):
		$Animation.play("Move")
		add_force(Vector2(5, 0), Vector2(1, 0))
	elif Input.is_action_pressed('ui_left'):
		$Animation.play("Move")
		add_force(Vector2(5, 0), Vector2(-1, 0))
	elif Input.is_action_pressed('ui_down'):
		$Animation.play("Move")
		add_force(Vector2(0, 5), Vector2(0, 1))
	elif Input.is_action_pressed('ui_up'):
		$Animation.play("Move")
		add_force(Vector2(0, 5), Vector2(0, -1))
	else:
		$Animation.play("Idle")

func _process(delta):
	get_input(delta)
