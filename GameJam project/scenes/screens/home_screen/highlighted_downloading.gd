extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$".".hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2_dmusic_body_entered(body):
	show()
	pass # Replace with function body.


func _on_area_2_dmusic_body_exited(body):
	hide()
	pass # Replace with function body.
