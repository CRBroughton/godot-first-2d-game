extends Node

export(PackedScene) var mob_scene # allows us to choose Mob scene to instance
var score

func _ready():
    randomize()