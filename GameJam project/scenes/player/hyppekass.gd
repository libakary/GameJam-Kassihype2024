extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play("jump")
		
	#just the jump animation
	if Input.is_action_just_pressed("jump"):
		$AnimatedSprite2D.play("jump")

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		#play run animation + flip them based on direction
		if velocity.x != 0:
			$AnimatedSprite2D.play("run")
			$AnimatedSprite2D.flip_v = false
			# See the note below about boolean assignment.
			$AnimatedSprite2D.flip_h = velocity.x < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		#movement stops and character stands... not too elegant but
		$AnimatedSprite2D.play("idle_default")	

	move_and_slide() #the slide has dissapeared idk how oops
