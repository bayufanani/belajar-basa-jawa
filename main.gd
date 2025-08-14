extends Node2D
var scoreScene = preload("res://score.tscn")

func cek_jawaban():
	var jawaban_benar = 0;
	var dragables = $Dragables.get_children()
	for i:Area2D in dragables:
		if i.dropzone!=null and i.dropzone.dropzone_name == i.dragable_name:
			jawaban_benar += 1
			
	var scoreInstance = scoreScene.instantiate()
	var animation = scoreInstance.get_node("AnimationPlayer")
	add_child(scoreInstance)
	scoreInstance.tampilkan_nilai(jawaban_benar, dragables.size())
