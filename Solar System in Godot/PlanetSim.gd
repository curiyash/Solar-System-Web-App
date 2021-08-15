extends Node2D

var G = 6.67e-11 
var m0 = 10
var m1 = 10
var m2 = 10
var m3 = 10
var m4 = 10
var m5 = 10
var m6 = 10
var m7 = 10
var m8 = 10
var m9 = 10

var D_scale = 1e6

var d1 = 5.835e+10/D_scale
var d2 = 1.082e+11/D_scale
var d3 = 1.496e+11/D_scale
var d4 = 2.280e+11/D_scale
var d5 = 7.784e+11/D_scale
var d6 = 1.427e+12/D_scale
var d7 = 2.870e+12/D_scale
var d8 = 4.497e+12/D_scale
var d9 = 5.914e+12/D_scale


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sun.position 		= Vector2(0,0)
	$Mercury.position 	= Vector2(d1,0)
	$Venus.position 	= Vector2(d2,0)
	$Earth.position 	= Vector2(d3,0)
	$Mars.position 		= Vector2(d4,0)
	$Jupiter.position 	= Vector2(d5,0)
	$Saturn.position 	= Vector2(d6,0)
	$Uranus.position 	= Vector2(d7,0)
	$Neptune.position 	= Vector2(d8,0)
	$Pluto.position 	= Vector2(d9,0)
	
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
	var Pm1 = $Sun.position 
	var Pm2 = $Earth.position
	var r = Pm2 - Pm1
	var distance = r.dot(r)
	
	var Force = 1
	print(r.normalized()*Force)
	
	
	$Earth.add_force(Pm2, -r.normalized()*Force)
