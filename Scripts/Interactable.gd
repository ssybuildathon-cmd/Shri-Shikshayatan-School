class_name Interactable
extends Area2D

signal interacted()

@export var prompt_message: String = "Press E to Inspect"
var is_player_in_range: bool = false

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		is_player_in_range = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		is_player_in_range = false

func _unhandled_input(event: InputEvent) -> void:
	if is_player_in_range and event.is_action_pressed("interact"):
		interact()

func interact() -> void:
	emit_signal("interacted")
