extends Node2D

func cek_jawaban():
	var jawaban_benar = 0;
	var dragables = $Dragables.get_children()
	for i:Area2D in dragables:
		#if i.dropzone!=null and i.dropzone.occupied_by !=null and i.dropzone.dropzone_name == i.dropzone.occupied_by.dragable_name:
		if i.dropzone!=null and i.dropzone.dropzone_name == i.dragable_name:
			jawaban_benar += 1
			print(i.dropzone.dropzone_name+"=="+i.dragable_name)
	
	print(str(jawaban_benar)+"/"+str(dragables.size()))
	$Score.visible = true
	$Score.tampilkan_nilai(jawaban_benar, dragables.size())
