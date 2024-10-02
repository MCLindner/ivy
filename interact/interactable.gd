extends CollisionObject3D
class_name Interactable

signal interacted(body)

@export var prompt_input = "interact"
@export var prompt_message = "peepee"


func interact(body):
	interacted.emit(body)
	print(body.name, " interacted with ", name)

func get_prompt():
	var key_name = ""
	# InputMap.get_actions()
	#var action = InputMap.action_get_events(prompt_input).find(InputEventKey)
	#var key_name = action.as_text_physical_keycode()
	# use find()
	
	print(InputMap.action_get_events(prompt_input))
	print(InputMap.action_get_events(prompt_input).find(InputEventKey, 0))
	
	key_name = prompt_input
	return prompt_message + "\n[" + key_name + "]"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
