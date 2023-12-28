extends CharacterBody2D

const SPEED = 300.0

var laser_scene = preload("res://Scenes/laser.tscn")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if (Input.is_action_just_pressed("fire")):
		var laser_instance = laser_scene.instantiate()
		owner.add_child(laser_instance)
		laser_instance.global_position = $LaserPoint.global_position
		laser_instance.rotation = (global_rotation + deg_to_rad(-90))

	move_and_slide()
