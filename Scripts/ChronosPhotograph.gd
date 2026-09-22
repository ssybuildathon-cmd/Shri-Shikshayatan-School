class_name ChronosPhotograph
extends Interactable

signal opened_inspection_view(photo_texture: Texture2D, caption_text: String)

@export var normal_photo: Texture2D
@export var distorted_photo: Texture2D

func interact() -> void:
	super.interact()
	
	var current_time = TimeManager.current_minutes
	var selected_texture: Texture2D = normal_photo
	var caption: String = "An ancient photograph depicting the museum opening in 1924. The visitors stand frozen in place."

	# Narrative shift as time approaches 6:00 PM
	if current_time >= 530: # 5:30 PM or later
		selected_texture = distorted_photo
		caption = "The faces in the 1924 photograph have warped... One of the figures is wearing your exact clothes."

	# Inspecting advances time by 15 minutes
	TimeManager.advance_time(15)
	
	opened_inspection_view.emit(selected_texture, caption)
