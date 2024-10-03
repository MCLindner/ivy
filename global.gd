extends Node

var data_file_path = "res://data/items.json"
var inventory_items
# https://medium.com/@thrivevolt/making-a-grid-inventory-system-with-godot-727efedb71f7#f1d3

func _ready():
	inventory_items = read_from_JSON(data_file_path)
	for key in inventory_items.keys():
		inventory_items[key]["key"] = key
		
func read_from_JSON(file_path : String):
	if FileAccess.file_exists(file_path):
		
		var data_file = FileAccess.open(file_path, FileAccess.READ)
		var parsed_result = JSON.parse_string(data_file.get_as_text())
		
		if parsed_result is Dictionary:
			return parsed_result
		else:
			print("Error reading file")
	else:
		print("File doesn't exist")
		
func get_item_by_key(key):
	if inventory_items and inventory_items.has(key):
		return inventory_items[key].duplicate(true)
