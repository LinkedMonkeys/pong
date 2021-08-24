extends Area2D


var max_speed = 400


# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 20
	position.y = 240


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var y_speed = 0
	
	if (Input.is_action_pressed("lpaddle_down")):
		y_speed = +1
	if (Input.is_action_pressed("lpaddle_up")):
		y_speed = -1
	
	position.y += y_speed*max_speed*delta
