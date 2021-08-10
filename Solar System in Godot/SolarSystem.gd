extends ViewportContainer


var G = 6.67e-11 
onready var m1 = 10
onready var m2 = 10



# Called when the node enters the scene tree for the first time.
func _ready():
	var screen_size = get_viewport_rect().size
	var center = screen_size/2
	print(screen_size)
	$Earth.linear_velocity.y = -100

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
	var Pm1 = $Sun.position 
	var Pm2 = $Earth.position
	var r = Pm2 - Pm1
	var distance = r.dot(r)
	
	var Force = 0.5
	print(r.normalized()*Force)
	
	
	$Earth.add_force(Pm2, -r.normalized()*Force)


