extends CharacterBody2D

const SPEED = 300.0

@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_dir != Vector2.ZERO:
		velocity = input_dir * SPEED
		
		if input_dir.x > 0:
			sprite.flip_h = false
		elif input_dir.x < 0:
			sprite.flip_h = true
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)

	move_and_slide()
