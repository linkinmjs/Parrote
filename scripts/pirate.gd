extends CharacterBody2D

var action_area: Area2D
var pirate: AnimatedSprite2D
var parrot_in_range: bool = false


func _ready() -> void:
	pirate = get_node("AnimatedSprite2D")
	action_area = get_node("ActionArea")
	action_area.body_entered.connect(_on_action_area_body_entered)
	action_area.body_exited.connect(_on_action_area_body_exited)
	action_area.input_event.connect(_on_action_area_input_event)

func _process(delta: float) -> void:
	pass

func _on_action_area_body_entered(body: Node):
	parrot_in_range = true
	print("parrot in range")
	
func _on_action_area_body_exited(body: Node):
	parrot_in_range = false
	print("parrot leaving pirate")

func _on_action_area_input_event(input_event: InputEvent):
	print(input_event)
	print("Action Pirate!!")
	pirate.play("action")
