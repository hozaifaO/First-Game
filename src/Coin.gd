extends Area2D

onready var animation_player = get_node("AnimationPlayer")



func _on_body_entered(body):
	animation_player.play("Fade_out")

