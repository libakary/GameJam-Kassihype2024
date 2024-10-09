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


func _on_area_2_dmusic_body_entered(body):
	play_audio()
	entered = true

	
func check():
	if Input.is_action_just_pressed("interact"):
		print('interacted with three')
		#get_tree().change_scene_to_file("res://scenes/screens/level_three_screen.tscn")
		
func play_audio():
	$"../AudioStreamPlayer2D".play()
