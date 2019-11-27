extends Actor

func _ready():
	velocity.x = -SPEED

func _physics_process(delta):
	if is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity,FLOOR_NORMAL).y