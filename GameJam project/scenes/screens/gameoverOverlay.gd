extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_shutdown_timer_timeout():
	$"../ShutdownTimer/TimeRemaining".hide()
	#show()
	$"../background music".stop()
	#get_tree().change_scene_to_file("res://scenes/screens/game_over_screen.tscn")
	
	#play game over sound or death sound or
	#pause timer IF IT WORKED
	
	pass # Replace with function body.

#add button to restart game
