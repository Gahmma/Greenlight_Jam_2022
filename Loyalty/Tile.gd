extends RigidBody2D

var size

func make_tile(_pos, _size):
		position = _pos
		size = _size
		var t = RectangleShape2D.new()
		t.extents = size
		$CollisionShape2D.shape = t
