extends RigidBody3D

@export var MOUSE_SENSITIVITY : float = 0.4

@onready var head_node = get_node("Head")

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	#get_tree().set_input_as_handled()
	#cam_pivot.translation = camera_position_default.translation
	#cam.fov = DEFAULT_FOV

func _input(event):	
	if !Engine.is_editor_hint():
		if event is InputEventMouseMotion: # and !is_sliding:
			rotate_y(deg_to_rad(-event.relative.x * MOUSE_SENSITIVITY))
			head_node.rotate_x(deg_to_rad(-event.relative.y * MOUSE_SENSITIVITY))
			head_node.rotation.x = clampf(head_node.rotation.x, deg_to_rad(-80), deg_to_rad(80))
			
		if event.is_action_pressed("ui_cancel"):
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		
		if event.is_action_pressed("click"):
			if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
				Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			
