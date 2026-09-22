extends CharacterBody2D

@export var speed: float = 200.0

@onready var light: PointLight2D = $PointLight2D

func _physics_process(_delta: float) -> void:
	# Get movement input (WASD or Arrow Keys)
	var input_vector := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_vector * speed
	move_and_slide()

func _process(_delta: float) -> void:
	# Rotates the PointLight2D node to continuously point at the mouse position
	if light:
		light.look_at(get_global_mouse_position())
