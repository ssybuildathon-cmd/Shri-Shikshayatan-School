
extends Node2D

# Core State Variables
var current_time: int = 500 # Represents 05:00 PM
var room_corrupted: bool = false

# Direct Node References
@onready var dialogue_label: Label = $UI/DialogueLabel
@onready var ceiling_light: PointLight2D = $IncandescentLight
@onready var mummy_sprite: Sprite2D = $MummyExhibit/MummySprite

func _ready():
	# Set initial dialogue text
	dialogue_label.text = "05:00 PM — The museum is quiet. The main entrance door behind you has slammed shut."

func _input(event):
	# Any left-click advances the exhibit inspection!
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		inspect_mummy()

func inspect_mummy():
	if current_time == 500:
		advance_clock(10, "05:10 PM — A 3rd Century sarcophagus. The mummy's right arm rests flat on its chest.")
	elif current_time == 510:
		advance_clock(10, "05:20 PM — You look closely at the sarcophagus... wait, wasn't its hand lowered a minute ago?")
		trigger_light_flicker()
	elif current_time == 520:
		advance_clock(30, "05:50 PM — The ambient hum in the gallery grows deafening. Something in the darkness shifted.")
		trigger_light_flicker()
	elif current_time >= 550 and not room_corrupted:
		execute_final_clue()

func advance_clock(minutes_to_add: int, narrative_text: String):
	current_time += minutes_to_add
	dialogue_label.text = narrative_text
	
	# Visual alteration based on time progression
	if current_time >= 530:
		mummy_sprite.rotation_degrees = 15.0
		ceiling_light.energy = 0.8

func trigger_light_flicker():
	# Dynamic light flicker sequence
	var tween = create_tween()
	tween.tween_property(ceiling_light, "energy", 0.1, 0.05)
	tween.tween_property(ceiling_light, "energy", 1.8, 0.05)
	tween.tween_property(ceiling_light, "energy", 0.3, 0.08)
	tween.tween_property(ceiling_light, "energy", 1.2, 0.05)

func execute_final_clue():
	room_corrupted = true
	current_time = 600
	trigger_light_flicker()
	
	dialogue_label.text = "06:00 PM — Complete silence. Every exhibit in the gallery is staring directly at you."
	
	mummy_sprite.rotation_degrees = 0.0
	mummy_sprite.scale = Vector2(1.5, 1.5)
