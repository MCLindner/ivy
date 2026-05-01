extends Node3D
class_name Character


signal update_inventory(items: Array)
var inventory_array = []
var health: int = 100
var stamina: int = 100

func pickup(item_id):
	inventory_array.append(str(item_id))
	update_inventory.emit(inventory_array)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
