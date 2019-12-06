tool
extends Area2D

export var next_scence:PackedScene
onready var animPlayer:AnimationPlayer = $AnimationPlayer

func _on_Portal2D_body_entered(body):
	teleport()
	
func _get_configuration_warning():
	return "Error: Level is Not Set, fill the next scence" if not next_scence else ""

func teleport():
	animPlayer.play("FadeIn")
	yield(animPlayer,"animation_finished")
	get_tree().change_scene_to(next_scence)

