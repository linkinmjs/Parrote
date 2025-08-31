extends Node2D

@onready var parallax_background: ParallaxBackground = $ParallaxBackground
@export var speed:= 100

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	parallax_background.scroll_base_offset.x -= speed * delta
