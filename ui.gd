extends Control

@onready var crosshair = $Crosshair
@onready var inventory = $Inventory

var inventory_array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inventory.visible = false

func toggle_inventory() -> void:
	crosshair.visible = !crosshair.visible
	inventory.visible = !inventory.visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("inventory"):
		toggle_inventory()

func _on_player_update_inventory(items: Array) -> void:
	inventory_array = items
	inventory.text = str(inventory_array)
	
