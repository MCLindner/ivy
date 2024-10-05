extends Interactable
class_name InventoryItem

@export var item_id = "item_id"


func _on_interacted(body: Variant) -> void:
	# lookup in json based on ID
	print(body.name, " interacted with ", name)
	body.pickup(item_id)
	self.queue_free()
		
