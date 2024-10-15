extends Node2D

var uranium_path = preload("res://scenes/reactor/uranium.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(-11,12):
		for y in range(-9,3):
			var uraniumNode = uranium_path.instantiate()
			uraniumNode.position = Vector2(50 * x, 50 * y)
			add_sibling.call_deferred(uraniumNode)
	pass # Replace with function body.

