extends Node

export(PackedScene) var mob_scene # allows us to choose Mob scene to instance
var score

func _ready():
	randomize()

func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()


func _on_MobTimer_timeout():
	pass # Replace with function body.


func _on_ScoreTimer_timeout():
	pass # Replace with function body.


func _on_StartTimer_timeout():
	pass # Replace with function body.
