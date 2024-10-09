extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#brings cat back to start position if it falls
	if $Hyppekass.position.y > 768:
		$Hyppekass.position = $StarterPosition.position
		$hole_sound.play()
	#pass
