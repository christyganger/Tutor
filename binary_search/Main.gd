extends Control

# Get node

onready var highest_number_textbox = get_node("user_input_highest/user_highest_declare")
onready var highest_number_current = get_node("current_number/TextEdit")
onready var user_current_guess = get_node("user_guesses_current/current__user_guesses_textbox")
onready var pc_current_guess = get_node("pc_guesses_current/current_pc_guesses")
onready var label_user_input = get_node("user_input_highest")
const DefaultManager = preload("pc_guess_main.gd") # Relative path
onready var default_manager = DefaultManager.new()


func _ready():
	get_node("Polygon2D/Label/Buttonguessmain").set_text("You guess the Program's number")
	get_node("Polygon2D/Label/Buttonpcfiguremain").set_text("Program guesses your number")
	default_manager.Run_code(10)
	#global.user_input_highest
func _on_Buttonpcfiguremain_pressed():
	
	global.text_change_flag = 1
	get_tree().change_scene("res://pc_guess_main.tscn")
	
	# Called when the node is added to the scene for the first time.
# Initialization here
	pass


func _on_Buttonguessmain_pressed():
	global.text_change_flag = 1
	
	get_tree().change_scene("res://player_guess_main.tscn")
	
	pass # replace with function body



func _process(delta):
	
	highest_number_current.set_text(String(global.user_input_highest))
	user_current_guess.set_text(String(global.amount_of_user_guesses))
	pc_current_guess.set_text(String(global.guess_count))
	if (global.text_change_flag == 1):
		label_user_input.set_visible(false)
	else:
		label_user_input.set_visible(true)
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass




func _on_button_reset_count_pressed():
	global.text_change_flag = 0
	global.user_input_highest = 0
	global.guess_count = 0
	global.amount_of_user_guesses = 0
	pass # replace with function body


func _on_user_highest_declare_text_changed(new_text):
	global.user_input_highest = int(highest_number_textbox.get_text())
	if (global.user_input_highest >= 1):
		global.randomnumber = int(rand_range(1,global.user_input_highest))
	pass # replace with function body
