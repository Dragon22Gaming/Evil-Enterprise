extends CharacterBody2D

var SPEED = 100
func _onready():
	if OS.is_debug_build():
		SPEED = 250

func _physics_process(_delta):
	#Handle vertical movement
	var directionY = Input.get_axis("Up", "Down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	#Handle Horizontal movement
	var directionX = Input.get_axis("Left", "Right")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
