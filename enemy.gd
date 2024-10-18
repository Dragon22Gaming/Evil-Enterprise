extends CharacterBody2D
class_name Enemy

@export_category("Enemy Stats:")
@export var max_health: int = 100
@export var movement_speed: float = 10
@export var defense: int = 0

@export_category("Attacks")
@export var attacks :Dictionary = {
"punch": 5, "kick": 10, "verbal_abuse": 20
}

func _ready():
	pass

func _physics_process(_delta):
	pass
