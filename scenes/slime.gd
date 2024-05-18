extends Node2D

const SPEED = 60

var direction = 1

@onready var right = $Right
@onready var left = $Left
@onready var sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if right.is_colliding():
		direction = -1
		sprite.flip_h = true
	if left.is_colliding():
		direction = 1
		sprite.flip_h = false
	
	position.x += direction * SPEED * delta
