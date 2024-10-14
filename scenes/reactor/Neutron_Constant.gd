extends RigidBody2D
var speed = 100
var rng = RandomNumberGenerator.new()
var velocity = Vector2(speed, 0)

func _ready():
	var direction = rng.randi_range(-90,90)
#	get_node(".").rotation = direction
	get_node(".").set_linear_velocity(velocity.rotated(direction))

func _process(delta):
	pass
