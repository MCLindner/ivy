extends RigidBody3D

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	#get_tree().set_input_as_handled()
	#cam_pivot.translation = camera_position_default.translation
	#cam.fov = DEFAULT_FOV

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		
	if event.is_action_pressed("click"):
		if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			
