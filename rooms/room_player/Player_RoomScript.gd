extends KinematicBody2D

export var gravity = 10
export var speed_walk = 250
export var speed_jump = -350
export var canMove = true

var movement = Vector2(0,0)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if !is_on_floor():
		movement.y += gravity
	else:
		movement.y = gravity
		
	var horizontal_axis = Input.get_action_strength("walk_right") - Input.get_action_strength("walk_left")
	if canMove:
		movement.x = speed_walk * horizontal_axis
	move_and_slide(movement,Vector2.UP)
	updateAnimation()
	
func updateAnimation():
	if movement.x > 0 and !is_on_wall():
		$Sprite.scale.x = 1
	elif movement.x < 0 and !is_on_wall():
		$Sprite.scale.x = -1
	pass
