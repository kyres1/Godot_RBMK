extends Node2D
# Called when the node enters the scene tree for the first time.
var Neutron_Path = preload("res://scenes/reactor/neutron.tscn")
var Uranium_Path = preload("res://scenes/reactor/uranium.tscn")

func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_rigid_body_2d_body_entered(body):
	if body.is_in_group("neutron"):
		var NewNeutron1 = Neutron_Path.instantiate()
		var NewNeutron2 = Neutron_Path.instantiate()
		var NewNeutron3 = Neutron_Path.instantiate()
		print("Fission!")
		NewNeutron1.position = Vector2(body.position.x, body.position.y)
		NewNeutron2.position = Vector2(body.position.x, body.position.y)
		NewNeutron3.position = Vector2(body.position.x, body.position.y)
		add_sibling(NewNeutron1)
		add_sibling(NewNeutron2)
		add_sibling(NewNeutron3)
		queue_free()
