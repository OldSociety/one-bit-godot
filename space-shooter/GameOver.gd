extends Node

onready var highscoreLabel = $HighscoreLabel

func _ready():
	set_highscore_label()


func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		var _r = get_tree().change_scene("res://World.tscn")
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func set_highscore_label():
	var save_data = SaveAndLoad.load_data_to_file()
	highscoreLabel.text = "Highscore : " + str(save_data.highscore)
