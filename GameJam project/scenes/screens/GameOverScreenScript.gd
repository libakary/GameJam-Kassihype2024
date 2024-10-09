extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$gameoverOverlay/gameover_sound.play()
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("interact"):
		print('interacted with one')
		get_tree().change_scene_to_file("res://scenes/screens/home_screen.tscn")
	pass
