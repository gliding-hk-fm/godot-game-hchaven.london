extends Node2D

var score := 0
const TARGET_SCORE = 20

@onready var win_label: Label = $CanvasLayer/Label
@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	win_label.hide()
	score_label.text = "Balloons: 0 / 20"

func add_point() -> void:
	score += 1
	score_label.text = "Balloons: " + str(score) + " / 20"
	
	if score >= TARGET_SCORE:
		win_label.show()
		print("You won!")
		get_tree().paused = true
