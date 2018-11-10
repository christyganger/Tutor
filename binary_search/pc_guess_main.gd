extends Control
# Get node
var mid = 0
var user_input_lowest = 0
var your_number_goes_here = 0
var text_buffer_out = "a random number has been placed in your number box for the pc to guess" + "\n"

onready var my_number_is_textbox = get_node("your_number_is/my_number_is")

onready var Button_guess_button = get_node("Button_guess")

onready var pc_current_guess_out_textbox = get_node("pc_current_guess_out_mainintro/textbox_pc_current_guess_out")
onready var debug_out = get_node("debug")
onready var pc_guess_window = get_node("Label/pc_guess_count")
onready var sprite_number_update_mid = get_node("Sprite/Label_mid/mid_number_line")
onready var sprite_number_update_lowest = get_node("Sprite/Label_lowest/lowest_number_line")
onready var sprite_number_update_highest = get_node("Sprite/Label_highest/highest_number_line")
onready var user_guess_update = get_node("user_guessed/user_guess_count")
func _ready():
	sprite_number_update_mid.set_text(String(mid))
	sprite_number_update_lowest.set_text(String(user_input_lowest))
	sprite_number_update_highest.set_text(String(global.user_input_highest))
	my_number_is_textbox.set_text(String(global.randomnumber))
	mid = (global.user_input_highest + user_input_lowest) / 2
	pc_current_guess_out_textbox.set_text(String(mid))
	
	pass

func Run_code(num):
	print(num);
	return(num+10);
	
func _on_Button_guess_pressed():
			
	if mid == global.randomnumber:
		text_buffer_out = ("The pc guess it!" + "\n")		
		global.guess_count +=1
		pc_guess_window.set_text(String(global.guess_count))
		get_node("Button_guess").hide()
		
		pass
	
	if mid < global.randomnumber:
		mid = mid - 1
		user_input_lowest = mid
		sprite_number_update_lowest.set_text(String(user_input_lowest))
		mid = (global.user_input_highest + user_input_lowest) / 2
		sprite_number_update_mid.set_text(String(mid))
		pc_current_guess_out_textbox.set_text(String(mid))
		text_buffer_out = ("Click Guess to Guess again!" + "\n" )
		global.guess_count +=1
		
		pass
	if mid > global.randomnumber:
		mid = mid + 1
		global.user_input_highest = mid
		sprite_number_update_highest.set_text(String(global.user_input_highest))
		mid = (global.user_input_highest + user_input_lowest) / 2
		pc_current_guess_out_textbox.set_text(String(mid))
		sprite_number_update_mid.set_text(String(mid))
		text_buffer_out = ("Click Guess to Guess again!" +"\n" )
		global.guess_count +=1
		
		pass
	
	pass
	# find out if users number is less than, greater than, or equal to guess
	# calculate what is left, using binary search, return if found

func _process(delta):
	debug_out.set_text(text_buffer_out)
	user_guess_update.set_text(String(global.amount_of_user_guesses))
	pc_guess_window.set_text(String(global.guess_count))
# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass




func _on_main_Button_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass # replace with function body
	
 #yay end

func _on_debug_text_changed():
	pass # replace with function body
