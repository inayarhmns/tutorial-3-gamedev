extends Area2D

onready var animation = get_node("AnimatedSprite")

func _ready():
	animation.play("static")

func _on_flag_body_entered(body):
	animation.play("move")


func _on_flag_body_exited(body):
	animation.play("static")
