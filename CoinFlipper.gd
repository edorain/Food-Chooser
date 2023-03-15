extends Control

enum sides {GONG,HUA}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var randomness = randi_range(0,1)
	var flipped = sides.find_key(randomness)
	$Label.text = sides[flipped] # Replace with function body.
