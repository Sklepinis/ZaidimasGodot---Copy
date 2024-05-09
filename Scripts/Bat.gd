extends Node2D

const speed = 100
var direction = 1
@onready var right = $Right
@onready var left = $Left
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if right.is_colliding(): 
		direction = -1
		animated_sprite.flip_h = false
	if left.is_colliding():
		direction = 1
		animated_sprite.flip_h = true
	position.x += direction * speed * delta
