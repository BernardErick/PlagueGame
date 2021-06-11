extends Control

export var text:String
var text_split
var currentText = 0
func _ready():
	text_split = text.split('\n')
	$TextureRect/RichTextLabel.text = text_split[0]
	pass 
func _changeText():
	currentText+=1
	if currentText < text_split.size():
		$TextureRect/RichTextLabel.text = text_split[currentText]
	else:
		queue_free()
func _on_TextureButton_pressed():
	_changeText()
	pass # Replace with function body.
