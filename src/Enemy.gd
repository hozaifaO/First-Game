extends Actor
var direction = 1.0
func _ready():
	pass

func _physics_process(delta):
	velocity.x = -SPEED * direction
	velocity = move_and_slide(velocity,FLOOR_NORMAL)
	
	if is_on_wall():
		direction = direction * -1.0