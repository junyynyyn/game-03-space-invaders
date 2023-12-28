extends CharacterBody2D

var direction = 1
var BASE_SPEED = 500
var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = BASE_SPEED

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = direction * speed
	move_and_slide()

func switchDirection():
	direction *= -1
