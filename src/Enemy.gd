extends Actor
func _ready():
	set_physics_process(false)
	velocity.x = -SPEED 
	
func _on_Stop_Detector_body_entered(body):
	
	if body.global_position.y > get_node("Stop Detector").global_position.y:
		return
	queue_free()
	
func _physics_process(delta):
	if is_on_floor():
		velocity.y = 0
	if is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity,FLOOR_NORMAL).y


