extends Actor
export var stomp_impulse = 1000.0

func _on_EnemyDetector_area_entered(area):
	velocity = calculate_stop_velocity(velocity,stomp_impulse)

func _on_EnemyDetector_body_entered(body):
	queue_free()


func _physics_process(delta):
	var is_jump_interupted = Input.is_action_just_released("jump") and velocity.y < 0.0
	velocity.x = input_direction().x * SPEED
	velocity.y += GRAVITY
	if is_jump_interupted:
		velocity.y = 0.0
	if Input.is_action_just_pressed("jump") and is_on_floor():
		jump(velocity)
	velocity = move_and_slide(velocity, FLOOR_NORMAL)


func input_direction():
    var direction = Vector2.ZERO
    direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    return direction.normalized()

func jump(velocity_l:Vector2):
	velocity.y -= jump_impulse

func calculate_stop_velocity(velocity_l:Vector2,impulse:float) -> Vector2:
	var out = velocity_l
	out.y = -impulse
	return out

