extends VehicleBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		engine_force = clampf(engine_force + 5, 0, 100)
	elif Input.is_action_pressed("ui_down"):
		engine_force = clampf(engine_force - 5, -80, 0)
	
	if Input.is_action_pressed("ui_left"):
		steering = clampf(steering + 0.01, 0, 1)
	elif Input.is_action_pressed("ui_right"):
		steering = clampf(steering - 0.01, -1, 0)
	elif Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		steering = 0
