extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#var timerscene = get_tree().get_root().find_node("TimerScene", true,false)
	#timerscene.connect("gameOver",self,"handleGameOver")
	#if !SignalBus.is_connected("toggle_settings_ui", toggle):
		#SignalBus.toggle_settings_ui.connect(_on_shutdown_timer_timeout())
		
	#%ShutdownTimer.timeout.connect(func():
		#print("Game is over"))
	#$ShutdownTimer.start()
	$"background music".play()
	#$platvorm_pets/Area2Dpets/highlighted_baby.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ShutdownTimer/TimeRemaining.set_text(str($ShutdownTimer.get_time_left()+1).pad_decimals(1))
	#brings cat back to start position if it falls
	if $Hyppekass.position.y > 768:
		$Hyppekass.position = $StarterPosition.position
		$hole_sound.play()
		
	
	#pass


func _on_shutdown_timer_timeout():
	$ShutdownTimer/TimeRemaining.hide()
	#show()
	$"background music".stop()
	get_tree().change_scene_to_file("res://scenes/screens/game_over_screen.tscn")
