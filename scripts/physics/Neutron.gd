extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_rigid_body_2d_body_entered(body):
	if body.is_in_group("uranium"):
		print("Neutron freed...")
		queue_free()
