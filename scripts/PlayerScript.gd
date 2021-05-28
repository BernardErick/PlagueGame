extends KinematicBody2D


export var speed_walk:int = 150
var movement = Vector2(0,0)

func _physics_process(delta):

	var horizontal_axis = Input.get_action_strength("walk_right") - Input.get_action_strength("walk_left")
	var vertical_axis = Input.get_action_strength("walk_down") - Input.get_action_strength("walk_up")
	movement.x = speed_walk * horizontal_axis * delta
	movement.y = speed_walk * vertical_axis * delta
	
	move_and_collide(movement)



