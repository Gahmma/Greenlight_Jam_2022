extends Node2D

var Tile = preload("res://Tile.tscn")

var map_size = 32
var num_tiles = 50
var min_size = 4
var max_size = 10

func _ready():
	randomize()
	make_tiles()
	
func make_tiles():
	for i in range(num_tiles):
		var pos = Vector2(0,0)
		var r = Tile.instance()
		var w = min_size + randi() % (max_size - min_size)
		var h = min_size + randi() % (max_size - min_size)
		r.make_tile(pos, Vector2(w,h) * map_size)
		$Tiles.add_child(r)
