extends Area2D

signal player_collected

func _ready():
	pass 



func _on_Herb_body_entered(body):
	if body.name == "Player":
		emit_signal("player_collected")
		queue_free()
	pass # Replace with function body.

