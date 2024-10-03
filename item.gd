extends Interactable


func _on_interacted(body: Variant) -> void:
	print(body.name, " interacted with ", name)
