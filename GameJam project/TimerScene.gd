extends Node

signal gameOver
# Called when the node enters the scene tree for the first time.
func _ready():
	$ShutdownTimer.start()

func _process(delta: float) -> void:
	$ShutdownTimer/TimeRemaining.text = "%s" % roundf($ShutdownTimer.time_left)

func _on_shutdown_timer_timeout():
	print("Timer Stops")
	emit_signal("gameOver")
	
	#actually game over screen
