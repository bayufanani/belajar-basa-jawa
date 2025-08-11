extends Area2D

@export var dropzone_name:String = ""

var occupied_by:Area2D = null

func is_occupied() -> bool:
	return occupied_by != null
