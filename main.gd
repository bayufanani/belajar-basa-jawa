extends Node2D

func cek_jawaban():
	var jawaban_benar = 0;
	var dragables = $Dragables.get_children()
	for i:Area2D in dragables:
		if i.dropzone!=null and i.dropzone.dropzone_name == i.dragable_name:
			jawaban_benar += 1
	var animation = $Score/AnimationPlayer
	animation.play("show_up")
	#$Score.tampilkan_nilai(jawaban_benar, dragables.size())
