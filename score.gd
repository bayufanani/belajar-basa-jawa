extends Node2D
var star_full = load("res://star_full.png")
var star_grey = load("res://star_grey.png")

func tampilkan_nilai(nilai:int, maks:int):
	$Control/nilai.text = str(nilai)+"/"+str(maks)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _close_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		self.visible = false
