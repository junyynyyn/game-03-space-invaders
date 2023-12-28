extends Node2D

func _on_back_area_area_entered(area):
	if (area.is_in_group("Laser")):
		area.queue_free()

func _on_flip_area_body_entered(body):
	if (body.is_in_group("Enemy")):
		body.switchDirection()
