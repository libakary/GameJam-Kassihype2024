extends CollisionShape2D

var entered = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$"../AnimatedSprite2D".play("spin")
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entered:
		check()
	#pass


func _on_disc_body_entered(body):
	entered = true
	#pass # Replace with function body.
	
func check():
	if Input.is_action_just_pressed("interact"):
		print('interacted with')
		get_tree().change_scene_to_file("res://scenes/screens/login_screen.tscn")
