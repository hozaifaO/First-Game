extends KinematicBody2D
class_name Actor


const FLOOR_NORMAL: = Vector2.UP
export var jump_impulse = 1000
export var SPEED: = 200
export var GRAVITY: = 30.59

var velocity: = Vector2.ZERO


func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY