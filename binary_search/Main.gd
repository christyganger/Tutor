extends Control

# Get node
#const string table
const out_main_welcome_dialog = "Hello, Welcome to Binary Search.";
const out_main_current_pc_guess_amount_dialog = "Current PC's amount of guesses:";
const out_main_current_user_guess_amount_dialog = "Current Player's amount of guesses:";
const out_main_highest_guess_in_number_dialog ="Please enter the highest number to guess from:";
const out_main_current_highest_num_dialog = "Current Highest Number";
const out_main_button_primary_gameplay_style_dialog = "Please Select: Play style";
const out_main_button_1_program_guesses_dialog = "PC guesses your number";
const out_main_button_2_user_guesses_dialog = "You guess the PC's number";
const out_main_button_3_reset_dialog = "Reset Game!";
const out_main_button_4_help_dialog = "HELP!";

#alias variables
onready var in_main_highest_guess_in_number_box = get_node("out_main_highest_guess_in_number/in_main_highest_guess_in_number")
onready var in_main_current_highest_num_box = get_node("out_main_highest_guess_in_number/in_main_highest_guess_in_number")
onready var in_main_current_user_guess_amount_box = get_node("out_main_current_user_guess_amount/in_main_current_user_guess_amount")
onready var in_main_current_pc_guess_amount_box = get_node("out_main_current_pc_guess_amount/in_main_current_pc_guess_amount")
onready var out_main_button_4_help = get_node("out_main_button_4_help")
onready var out_main_button_3_reset = get_node("out_main_button_3_reset")
onready var out_main_button_2_user_guess = get_node("out_main_button_box/out_main_button_primary_gameplay_style/out_main_button_2_user_guesses")
onready var out_main_button_1_program_guesses = get_node("out_main_button_box/out_main_button_primary_gameplay_style/out_main_button_1_program_guesses")
onready var out_main_button_primary_gameplay_style = get_node("out_main_button_box/out_main_button_primary_gameplay_style")
onready var out_main_current_highest_num = get_node("out_main_current_highest_num")
onready var out_main_highest_guess_in_number = get_node("out_main_highest_guess_in_number") 
onready var out_main_current_user_guess_amount = get_node("out_main_current_user_guess_amount")
onready var out_main_current_pc_guess_amount = get_node("out_main_current_pc_guess_amount")
onready var out_main_welcome = get_node("out_main_welcome")
const DefaultManager = preload("pc_guess_main.gd") # Relative path
onready var default_manager = DefaultManager.new()
#prototype


func _ready():
	var in_main_variables = [0,0,0,0]
	# in_main_highest_guess_in_number = 0;
	# in_main_current_highest_num = 1;
	# in_main_current_pc_guess_amount = 2;
	# in_main_current_user_guess_amount = 3;
	out_main_welcome.set_text(out_main_welcome_dialog)
	out_main_current_pc_guess_amount.set_text(out_main_current_pc_guess_amount_dialog)
	out_main_current_user_guess_amount.set_text(out_main_current_user_guess_amount_dialog)
	out_main_highest_guess_in_number.set_text(out_main_highest_guess_in_number_dialog)
	out_main_current_highest_num.set_text(out_main_current_highest_num_dialog)
	out_main_button_primary_gameplay_style.set_text(out_main_button_primary_gameplay_style_dialog)
	out_main_button_1_program_guesses.set_text(out_main_button_1_program_guesses_dialog)
	out_main_button_2_user_guess.set_text(out_main_button_2_user_guesses_dialog)
	out_main_button_3_reset.set_text(out_main_button_3_reset_dialog)
	out_main_button_4_help.set_text(out_main_button_4_help_dialog)
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
	
	
	
	
	if (global.text_change_flag == 1):
		out_main_highest_guess_in_number.set_visible(false)
	else:
		out_main_highest_guess_in_number.set_visible(true)
		
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass




func _on_button_reset_count_pressed(in_main_variables):
	global.text_change_flag = 0
	in_main_variables[0] = 0;
	in_main_variables[1] = 0;
	in_main_variables[2] = 0;
	in_main_variables[3] = 0;
	pass # replace with function body




func _on_in_main_current_highest_num_text_changed(in_main_variables):
	in_main_current_highest_num_box.set_text(in_main_variables[1])
	
	pass # replace with function body


func _on_in_main_highest_guess_in_number_text_changed(in_main_variables):
	in_main_variables[1] = in_main_current_highest_num_box.get_text()
	if (in_main_variables[1]  >= 1):
		global.randomnumber = int(rand_range(1, in_main_variables[1] ))
	pass # replace with function body
