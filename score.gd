extends Node2D
var star_full = load("res://star_full.png")
var star_grey = load("res://star_grey.png")

func tampilkan_nilai(nilai:int, maks:int):
	$AnimationPlayer/CanvasGroup/Control/nilai.text = str(nilai)+"/"+str(maks)
	$AnimationPlayer.play("show_up")

func _close_input(event: InputEvent) -> void:
	var ini = self
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$AnimationPlayer.play("hide")
		await $AnimationPlayer.animation_finished
		#queue_free()
