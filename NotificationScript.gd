extends Area2D
var player_entered = false
var can_dialog = true
var dialog = preload("res://dialogues/BoxDialogue.tscn")
export var text_to_dialog:String




func _process(delta):
	dialogue()

func loadFile()-> String:
	var file = File.new()
	file.open(text_to_dialog, File.READ)
	var content = file.get_as_text()
	file.close()
	return content

func dialogue():
	if can_dialog and player_entered and Input.is_action_just_pressed("interact"):
		can_dialog = false
		var dialog_instance = dialog.instance()
		dialog_instance.text = loadFile()
		print(loadFile(),"passou")
		dialog_instance.rect_scale.x = 0.2
		dialog_instance.rect_scale.y= 0.2
		dialog_instance.rect_position.x = 484.877
		dialog_instance.rect_position.y = 340.295
		get_parent().add_child(dialog_instance)
	pass


func _on_Node2D_body_entered(body):
	if body.name == "Player":
		player_entered = true
	pass


func _on_Node2D_body_exited(body):
	if body.name == "Player":
		player_entered = false
	pass 
