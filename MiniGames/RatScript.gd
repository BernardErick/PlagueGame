extends KinematicBody2D

var velocity = Vector2(-1,0)
export var speed = 100
var can_change = true
var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	pass
func _process(delta):
	_movement(delta)
func _movement(delta):
	var collision = move_and_collide(velocity * speed * delta)
	if collision:
			var new_route = rng.randi_range(1,4)
			if new_route == 1 and can_change: #right
				velocity.x = 1
				velocity.y = 0
				can_change = false
			elif new_route == 2 and can_change: #left
				velocity.x = -1
				velocity.y = 0
				can_change = false
			elif new_route == 3 and can_change: #up
				velocity.x = 0
				velocity.y = -1
				can_change = false
			elif new_route == 4 and can_change: #down
				velocity.x = 0
				velocity.y = 1
				can_change = false
			yield(get_tree().create_timer(0.5),"timeout")
			can_change = true
