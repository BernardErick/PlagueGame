extends Area2D
signal interact 
var playerEntered = false

func _process(delta):
	if Input.is_action_just_released("interact") and playerEntered:
		emit_signal("interact")




func _on_House1_body_entered(body):
	if body.name == "Player":
		playerEntered = true
	 

func _on_House1_body_exited(body):
	if body.name == "Player":
		playerEntered = false
