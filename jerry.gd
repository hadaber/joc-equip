extends  Sprite2D

var velocitat: Vector2 = Vector2(0, 0)

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	#var desplaçament: Vector2 = Vector2(radi*sin(velocitat_angular*temps_total)
	#position = posicio_inicial + desplaçament
	#temps_total += delta
	velocitat =Vector2(0,0)
	if Input.is_action_pressed("mou_dreta") :
		velocitat = Vector2(100, 0)
	#position += velocitat * delta
	if Input.is_action_pressed("mou_esquerra"):
		velocitat = Vector2(-100,0)
	#position += velocitat * delta
	if Input.is_action_pressed("mou_adalt"):
		velocitat=Vector2(0,-100)
	#position += velocitat * delta
	if Input.is_action_pressed("mou_abaix"):
		velocitat=Vector2(0,100)
	position += velocitat * delta
