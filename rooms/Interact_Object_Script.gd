extends Node2D

var player_entered = false

func _on_Area2D_body_entered(body):
	if body.name == "Player_Room":
		self.visible = true
	pass

func _on_Area2D_body_exited(body):
	if body.name == "Player_Room":
		self.visible = false
	pass
