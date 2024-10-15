extends RigidBody2D
var speed = 300
var rng = RandomNumberGenerator.new()
var direction = rng.randf_range(-PI,PI)
var velocity = Vector2(speed, 0).rotated(direction)

func _ready():
	pass
	#get_node(".").rotation = direction
	

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())


func _on_body_entered(body):
	if body.is_in_group("uranium") or body.is_in_group("control_rod"):
		queue_free()
