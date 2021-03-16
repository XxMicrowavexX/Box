extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		for i in range(0, 3):
			var box = load("res://Scenes/Box.tscn").instance()
			box.position = Vector2(rand_range(0, 256), rand_range(0, 128))
	
			get_tree().get_root().add_child(box)
	if Input.is_action_just_pressed("ui_select"):
		for i in range(0, 3):
			var box = load("res://Scenes/Button.tscn").instance()
			box.position = Vector2(rand_range(0, 256), rand_range(0, 128))
	
			get_tree().get_root().add_child(box)
