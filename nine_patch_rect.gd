extends NinePatchRect

func _on_nine_patch_rect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			self_modulate = Color("#b6b6b6")
		if event.is_released():
			self_modulate = Color("#ffffff")
			owner.cek_jawaban()
