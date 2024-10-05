extends Interactable
class_name InventoryItem

@export var item_id = "item_id"


func _on_interacted(body: Variant) -> void:
	#lookup in json based on ID
	print(body.name, " interacted with ", name)
	
	#body.pickup(item_id) or #Global.pickup(item_id) and have a big dictionary that keeps track of all inventories or a json
	# print(Global.get_item_by_key(item_id)) wont need this here
	# add pickup function to owner
	# then hide the item
	
	
