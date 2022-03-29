extends Area2D

export var speed = 400 # pixels per second
var screen_size


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var velocity = Vector2.ZERO # players movement vector, this sets it to 0,0 - not moving
	if Input.is_action_just_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_just_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_just_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_just_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed # normalized to stop increased speed at diagonal movements
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	pass
