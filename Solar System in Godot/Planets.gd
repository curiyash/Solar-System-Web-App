extends Node2D
 
var R = [39, 72.3, 100, 152.4]
var G = 6.671e-11
var body2 = {mass = 1e10, position = Vector2(612, 350), velocity = Vector2()} # Sun
var body1 = {mass = 1660.1, position = Vector2(573, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[0]))} # Mercury
var body3 = {mass = 24478.383, position = Vector2(539.7, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[1]))} # Venus
var body4 = {mass = 30034.89596, position = Vector2(512, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[2]))} # Earth
var body5 = {mass = 3227.151, position = Vector2(459.6, 350), velocity = Vector2(0, sqrt(G*body2.mass/R[3]))} # Mars
var bodies = [body1, body3, body4, body5]
 
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
 
var point
 
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
 
func acceleration(pos1, pos2):
	var direction = Vector2(pos1.x-pos2.x, pos1.y-pos2.y)
	var length = sqrt(direction.x*direction.x + direction.y*direction.y)
	var normal = Vector2(direction.x/length, direction.y/length)
	var x_acc = normal.x*G*body2.mass/pow(length, 2)
	var y_acc = normal.y*G*body2.mass/pow(length, 2)
	var acc = Vector2(x_acc, y_acc)
	return acc
 
func step_euler(body2, body):
	var step = 15
	for i in range(step):
		var dt = 1.0/step
		var acc = acceleration(body2.position, body.position)
		body.velocity = Vector2(body.velocity.x+acc.x*dt, body.velocity.y+acc.y*dt)
		body.position = Vector2(body.position.x+body.velocity.x*dt, body.position.y+body.velocity.y*dt)
 
func _draw():
	draw_circle(body2.position, 6, Color(200, 200, 0))
	for body in bodies:
		draw_circle(body.position, 4, Color(200, 0, 0))
 
func _process(delta):
	for body in bodies:
		step_euler(body2, body)
	update()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass
