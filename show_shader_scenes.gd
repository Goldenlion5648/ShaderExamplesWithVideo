extends Node2D

var to_show: int = 0
var child_count: int = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	child_count = get_child_count() - 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for child in get_children():
		if "Button" not in child.name:
			child.hide()
	get_child(to_show).show()
	$Button/shader_label.text = "Scene name:\n" + get_child(to_show).name
	pass


func _on_button_pressed() -> void:
	to_show = (to_show + 1) % child_count
	pass # Replace with function body.
