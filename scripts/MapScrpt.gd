extends Node2D




func _ready():
	pass # Replace with function body.



func _on_House1_interact():
	print("Tocou")
	
	get_tree().change_scene("res://scenes/test.tscn")


func _on_House2_interact():
	print("Tocou")

func _on_House4_interact():
	print("Tocou")


func _on_House3_interact():
	print("Tocou")

