extends RigidBody2D
# Called when the node enters the scene tree for the first time.
var Neutron_Path = preload("res://scenes/reactor/neutron.tscn")

func _ready():
	pass

func neutron_collided(body):
	if body.is_in_group("neutron"):
		var NewNeutron1 = Neutron_Path.instantiate()
		var NewNeutron2 = Neutron_Path.instantiate()
		var NewNeutron3 = Neutron_Path.instantiate()	
		var bodyPos = body.get_position()
		#NewNeutron1.global_position = Vector2(bodyPos.x, bodyPos.y + 20)
		#NewNeutron2.global_position = Vector2(bodyPos.x, bodyPos.y)
		#NewNeutron3.global_position = Vector2(bodyPos.x, bodyPos.y - 20)
		add_sibling.call_deferred(NewNeutron1)
		add_sibling.call_deferred(NewNeutron2)
		add_sibling.call_deferred(NewNeutron3)
		queue_free()
