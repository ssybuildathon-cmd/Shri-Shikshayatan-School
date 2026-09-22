extends Node

signal time_advanced(new_time_str: String, minutes: int)
signal clock_struck_six()

var current_minutes: int = 500 # Represents 05:00 PM (5 hours * 60 mins)
const MAX_MINUTES: int = 600    # Represents 06:00 PM (6 hours * 60 mins)

func advance_time(minutes_to_add: int) -> void:
	if current_minutes >= MAX_MINUTES:
		return
		
	current_minutes += minutes_to_add
	
	if current_minutes >= MAX_MINUTES:
		current_minutes = MAX_MINUTES
		emit_signal("time_advanced", get_time_formatted(), minutes_to_add)
		emit_signal("clock_struck_six")
	else:
		emit_signal("time_advanced", get_time_formatted(), minutes_to_add)

func get_time_formatted() -> String:
	var hours: int = int(current_minutes / 60.0)
	var mins: int = current_minutes % 60
	return "%02d:%02d PM" % [hours, mins]
