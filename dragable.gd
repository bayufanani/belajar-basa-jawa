extends Node2D

var dragging = false
var original_position
var in_dropzone = false
var dropzone
@export var dragable_name:String = ""
@export var label_text: String:
	set(value):
		label_text = value
		$Label.text = value
	get():
		return $Label.text

func _ready() -> void:
	original_position = position

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			if dropzone != null:
				dropzone.occupied_by = null
			dragging = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and dragging:
		position = get_global_mouse_position()
	if event is InputEventMouseButton and event.is_released() and dragging:
		dragging = false
		if in_dropzone and not dropzone.is_occupied():
			dropzone.occupied_by = self
			animate_to_dropzone()
		else:
			animate_back_to_original_place()
		print("end drag")

func animate_to_dropzone():
	tweening("global_position", dropzone.position)

func animate_back_to_original_place():
	tweening("global_position", original_position)
	if dropzone!=null:
		dropzone.occupied_by = null
		dropzone = null

func tweening(property, destination):
	var tween = create_tween()
	tween.tween_property(self, property, destination, .5)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_OUT)
	await tween.finished

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("dropzone") and not area.is_occupied() and dragging:
		in_dropzone = true
		dropzone = area

func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("dropzone"):
		in_dropzone = false
