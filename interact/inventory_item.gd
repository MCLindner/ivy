extends Interactable
class_name InventoryItem

@export var item_id = "item_id"


func _on_interacted(body: Variant) -> void:
	#lookup in json based on ID
	print(body.name, " interacted with ", name)
	print(Global.get_item_by_key("sword"))
	# now we'll send a signal over to the player to update inventory
	
