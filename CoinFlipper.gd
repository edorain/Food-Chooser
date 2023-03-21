extends Control

# Setting the buttons type
enum button_types {CoinFlipper,RandomFood,Magic8Ball}
@export var button_function = button_types.CoinFlipper

enum sides {Heads,Tails}
var food_types : Array = ["Noodle","Rice","Bread"]
var wisdom_by_magic = [
	"Outlook hazy, try again after you've had your morning coffee.",
	"Sorry, I can't answer that until you finish your broccoli.",
	"Signs point to yes, but only if you dance like a chicken for 10 seconds.",
	"Don't count on it, unless you can make a convincing argument in rhyming couplets.",
	"My sources say no, but my gut says maybe if you give me a cookie.",
	"Reply hazy, ask again after you've done 20 jumping jacks.",
	"As I see it, yes, but only if you wear a clown nose for the rest of the day.",
	"Cannot predict now, unless you answer this riddle: what has four legs in the morning, two legs in the afternoon, and three legs in the evening?",
	"Outlook not so good, unless you do a silly dance and make everyone around you laugh.",
	"My reply is no, but if you tell me a funny joke, I might change my mind.",
	"Signs point to yes, but only if you speak in a British accent for the next hour.",
	"Don't count on it, unless you can successfully balance a spoon on your nose.",
	"My sources say no, but if you do a cartwheel right now, they might change their minds.",
	"Reply hazy, ask again after you've worn your underwear on your head for 10 minutes.",
	"As I see it, yes, but only if you sing 'I Will Survive' at the top of your lungs.",
	"Cannot predict now, unless you do a handstand and hold it for 10 seconds.",
	"Outlook not so good, unless you tell me a funny story about a talking unicorn.",
	"My reply is no, but if you give me a high-five, I might reconsider.",
	"Signs point to yes, but only if you do the hokey-pokey and turn yourself around.",
	"Don't count on it, unless you can juggle three oranges while standing on one foot.",
	"My sources say no, but if you do a victory dance, they might change their minds.",
	"Reply hazy, ask again after you've whispered 'Abracadabra' three times.",
	"As I see it, yes, but only if you do a silly walk for the next 5 minutes.",
	"Cannot predict now, unless you recite the alphabet backwards.",
	"Outlook not so good, unless you make a funny face and hold it for 10 seconds.",
	"My reply is no, but if you give me a hug, I might change my mind.",
	"Signs point to yes, but only if you say 'please' in a funny voice.",
	"Don't count on it, unless you can name all seven dwarfs from Snow White.",
	"My sources say no, but if you do a jumping jack every time I say 'magic,' they might change their minds.",
	"Reply hazy, ask again after you've sung 'Happy Birthday' to yourself."
]

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
		if food_types != [] :
			_displaythetext(food_types.pick_random())
	elif button_function == button_types.Magic8Ball :
		_displaythetext(wisdom_by_magic.pick_random())


func _displaythetext(answer):
	$Label.text = answer # Replace with function body.


func _on_line_edit_text_submitted(new_text):
	food_types.append(new_text)
	$LineEdit.clear()
	


func _on_clear_button_pressed():
	food_types = []
