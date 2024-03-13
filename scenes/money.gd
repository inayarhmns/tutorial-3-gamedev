extends Area2D

onready var moneySound = $money
onready var money_anim = $money_anim
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	money_anim.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func wait(seconds):
	OS.delay_msec(seconds * 1000)


func play_music():
	moneySound.play()
func _on_money_body_entered(body):
	if body.name == "player":
		if money_anim.animation == "default":
			money_anim.play("card")
		else: money_anim.play("default")
		play_music()
