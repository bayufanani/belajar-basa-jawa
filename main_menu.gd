extends Control

func tween(property, to, duration:float =.5):
	var tweening = create_tween()
	tweening.tween_property(self, property, to, duration).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_SINE)

func hover() -> void:
	tween("scale", Vector2(1.1,1.1), .1)

func unhover() -> void:
	tween("scale", Vector2(1,1), .1)

func _on_nine_patch_rect_2_mouse_entered() -> void:
	hover()


func _on_nine_patch_rect_mouse_entered() -> void:
	hover()


func _on_nine_patch_rect_2_mouse_exited() -> void:
	unhover()


func _on_nine_patch_rect_mouse_exited() -> void:
	unhover()
