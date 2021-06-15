extends Node2D

func _ready():
	pass
func _process(delta):
	if Input.is_key_pressed(32):
		$AnimationPlayer.play("attack")
