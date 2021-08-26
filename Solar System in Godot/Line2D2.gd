extends Line2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var target
var point
export(NodePath) var targetPath

func _ready():
	target = get_node(targetPath)
	pass

func _process(delta):
	point = target.position
	add_point(point)
	update()


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
