extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		var box = load("res://Scenes/Box.tscn").instance()
		box.position = Vector2(rand_range(0, 1024), 36)
		get_tree().get_root().add_child(box)
