extends CollisionShape2D

var entered = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entered:
		check()
	#pass


func _on_area_2_dpets_body_entered(body):
	print(body.name)
	$"../highlighted_baby".show()
	play_audio()

	entered = true

func check():
	if Input.is_action_just_pressed("interact"):
		print('interacted with one')
		get_tree().change_scene_to_file("res://scenes/screens/level_one_screen.tscn")
		
func play_audio():
	$"../AudioStreamPlayer2D".play()
