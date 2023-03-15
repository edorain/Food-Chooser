extends Control

# Setting the buttons type
enum button_types {CoinFlipper,RandomFood}
@export var button_function = button_types.CoinFlipper

enum sides {GONG,HUA}
var food_types = ["Noodle","Rice","Bread"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	# Coin Flipper Function
	if button_function == button_types.CoinFlipper :
		var randomness = randi_range(0,sides.size()-1)
		var flipped = sides.find_key(randomness)
		_displaythetext(flipped)
	elif button_function == button_types.RandomFood :
		_displaythetext(food_types.pick_random())


func _displaythetext(answer):
	$Label.text = answer # Replace with function body.


func _on_line_edit_text_submitted(new_text):
	pass # Replace with function body.
