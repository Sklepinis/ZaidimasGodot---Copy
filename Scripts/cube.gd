extends Node2D

const speed = 200
var direction = 1
@onready var up = $Up
@onready var down = $Down
@onready var animated_sprite = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if down.is_colliding(): 
		direction = -1
		animated_sprite.flip_h = true
	if up.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.y += direction * speed * delta
