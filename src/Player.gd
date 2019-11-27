extends Actor

func _physics_process(delta):
	
	velocity.x = input_direction().x * SPEED
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and is_on_floor():
	    velocity.y -= jump_impulse
	velocity = move_and_slide(velocity, FLOOR_NORMAL)


func input_direction():
    var direction = Vector2.ZERO
    direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    return direction.normalized()

