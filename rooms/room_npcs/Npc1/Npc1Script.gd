extends KinematicBody2D

export var text_to_dialog:String
var player_entered = false
var can_dialog = true
var dialog = preload("res://dialogues/BoxDialogue.tscn")

func _ready():
	pass 
func _process(delta):
	dialogue()
func dialogue():
	if can_dialog and player_entered and Input.is_action_just_pressed("interact"):
		can_dialog = false
		var dialog_instance = dialog.instance()
		dialog_instance.text = loadFile()
		dialog_instance.rect_position.x = 250
		dialog_instance.rect_position.y = 400
		get_parent().add_child(dialog_instance)
	pass
func loadFile()-> String:
	var file = File.new()
	file.open(text_to_dialog, File.READ)
	var content = file.get_as_text()
	file.close()
	return content
func _on_Area2D_body_entered(body):
	if body.name == "Player_Room":
		player_entered = true
	pass # Replace with function body.

func _on_Area2D_body_exited(body):
	if body.name == "Player_Room":
		player_entered = false
	pass # Replace with function body.
