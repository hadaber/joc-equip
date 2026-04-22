extends Sprite2D
var direccio: Vector2 = Vector2(0,0)
var velocitat := 300

func _process(delta: float) -> void:
	direccio = Vector2.ZERO
	if Input.is_key_pressed(KEY_RIGHT):
		direccio = Vector2(1, 0)
	elif Input.is_key_pressed(KEY_LEFT):
		direccio = Vector2(-1, 0)
	elif Input.is_key_pressed(KEY_UP):
		direccio = Vector2(0, -1)
	elif Input.is_key_pressed(KEY_DOWN):
		direccio = Vector2(0, 1)	
	position += direccio * velocitat * delta
