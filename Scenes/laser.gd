extends Area2D

var SPEED = 300.0

func _ready():
	pass
	
func _process(delta):
	position += transform.x * SPEED * delta


func _on_body_entered(body):
	print("Hit!")
