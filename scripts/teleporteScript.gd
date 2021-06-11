extends Area2D
var playerEntered = false
export var rota:String 

func _process(delta):
	if Input.is_action_pressed("interact") and playerEntered:
		get_tree().change_scene(rota)
		print("Telportando...")

func _on_teleporte_body_entered(body):
	if body.name == "Player":
		playerEntered = true
		print("Entrou")


func _on_teleporte_body_exited(body):
	if body.name == "Player":
		playerEntered = false
		print("Saiu")
