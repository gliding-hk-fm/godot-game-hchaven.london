extends Area2D
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		set_deferred("monitoring", false)
		
		if audio_player:
			audio_player.play()
		
		get_tree().current_scene.add_point()
		
		var random_x = randf_range(100, 1050)
		var random_y = randf_range(100, 550)
		global_position = Vector2(random_x, random_y)
		
		await get_tree().create_timer(0.4).timeout
		set_deferred("monitoring", true)
