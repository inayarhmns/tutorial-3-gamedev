extends KinematicBody2D

export (int) var speed = 400
export (int) var GRAVITY = 1200
onready var sprite = get_node("AnimatedSprite")
const UP = Vector2(0,-1)
export (int) var jump_speed = -400
export var maxjump = 2
export var currentjump = 0
var velocity = Vector2()

func move(direction):
	velocity.x = 0
	if direction == Vector2.RIGHT:
		velocity.x += speed
			
	if direction == Vector2.LEFT:
		velocity.x -= speed
	
	
func crouch():
	if is_on_floor() and Input.is_action_pressed("ui_down"):
		sprite.play("crouch_right")
		velocity.y = 100000
	else: sprite.stop()


func get_input():
	var direction = Vector2.ZERO
	if Input.is_action_pressed('ui_right'):
		direction = Vector2.RIGHT
	elif Input.is_action_pressed('ui_left'): 
		direction = Vector2.LEFT
	else: direction = Vector2.ZERO
	return direction
	

func jump(direction):
	if is_on_floor():
		currentjump = 0
	if currentjump < maxjump and is_on_floor() and Input.is_action_just_pressed("ui_up"):
		currentjump += 1
		velocity.y = jump_speed
		sprite.stop()
	elif currentjump < maxjump and Input.is_action_just_pressed("ui_up"):
		sprite.stop()
		currentjump += 1
		velocity.y = jump_speed
		
		

func animate_walk(direction):
	if direction == Vector2.RIGHT:
		sprite.play("right")
	elif direction == Vector2.LEFT:
		sprite.play("left")
	else:
		sprite.stop()


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	var direction = get_input()
	move(direction)
	animate_walk(direction)
#	crouch()
	jump(direction)
	
	velocity = move_and_slide(velocity, UP)
