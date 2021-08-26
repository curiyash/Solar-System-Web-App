extends Camera2D

const MOVE_SPEED = 500
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		global_position += Vector2.LEFT * delta * MOVE_SPEED
	if Input.is_action_pressed("ui_right"):
		global_position += Vector2.RIGHT * delta * MOVE_SPEED
	if Input.is_action_pressed("ui_up"):
		global_position += Vector2.UP * delta * MOVE_SPEED
	if Input.is_action_pressed("ui_down"):
		global_position += Vector2.DOWN * delta * MOVE_SPEED
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func _on_Button2_pressed():
#	set_zoom(get_zoom()/1.5) # Replace with function body.


#func _on_Button_pressed():
#	set_zoom(get_zoom()*1.5)# Replace with function body.


func _on_Button_pressed():
	set_zoom(get_zoom()*1.5)
	pass # Replace with function body.


func _on_Button2_pressed():
	set_zoom(get_zoom()/1.5)
	pass # Replace with function body.
