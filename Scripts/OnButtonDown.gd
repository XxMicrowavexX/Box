extends Area2D


# Declare member variables here. Examples:
# var a = 2
signal onButtonDown


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_Area2D_area_entered(area):
	print("WIN")
	print(get_node("../Control/WinText"))
