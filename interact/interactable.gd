extends CollisionObject3D
class_name Interactable

signal interacted(body)

@export var prompt_input = "interact"
@export var prompt_message = "item"


func interact(body):
	interacted.emit(body)
	#print(body.name, " interacted with ", name)


func get_prompt():
	var key_name = ""
	var action_array = InputMap.action_get_events(prompt_input)
	
	if Input.get_connected_joypads().size() == 0:
		for action in action_array:
			if action is InputEventKey:
				key_name = action.as_text_physical_keycode()
				break
			elif action is InputEventMouseButton:
				key_name = action.as_text()
				break
	else:
		for action in action_array:
			if action is InputEventJoypadButton:
				key_name = action.button_index
				# we will need to add a function to map button_index 
				# to unicode. We will also need to use 
				# Input.get_joy_name() to identify controller type
				break
				
	return prompt_message + "\n[" + key_name + "]"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
