extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.q
func _physics_process(delta: float) -> void:
	apply_central_force(Vector3(cos(rotation.y), 0, sin(rotation.y)) * 5)
	apply_torque(Vector3.UP * PI / 10)
