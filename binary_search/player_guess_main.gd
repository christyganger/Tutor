extends Node
var user_guess_number = 0


# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var prompt_user_box = get_node("prompt_user")
onready var user_guessing = get_node("user_guess_prompt_label/user_guess_TextEdit")
onready var player_guess_amount = get_node("player_guess_Label/Player_guesses_updatebox")
onready var pc_guess_amount = get_node("pc_guess_label/pc_guess_updatebox")
onready var highest_number_box = get_node("Highest_possible_label/highest_possible_lineedit")
onready var check_button = get_node("check_Button")
onready var higher_lower_check_label_feedback = get_node("check_Button/higher_lower_prompt_Label")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	randomize()
	highest_number_box.set_text(String(global.user_input_highest))
	player_guess_amount.set_text(String(global.amount_of_user_guesses))
	pc_guess_amount.set_text(String(global.guess_count))
	if global.user_input_highest >= 1:
		global.randomnumber = int((rand_range(1,global.user_input_highest)))
	pass


func _process(delta):
	player_guess_amount.set_text(String(global.amount_of_user_guesses))
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass



func _on_user_guess_TextEdit_text_changed():
	user_guess_number = int(user_guessing.get_text())
	pass # replace with function body


func _on_Player_guesses_updatebox_text_changed(new_text):
	pass # replace with function body


func _on_pc_guess_updatebox_text_changed(new_text):
	pass # replace with function body


func _on_highest_possible_lineedit_text_changed(new_text):
	pass # replace with function body


func _on_check_Button_pressed():
	global.amount_of_user_guesses += 1
	if int(user_guess_number) > global.randomnumber:
			higher_lower_check_label_feedback.set_text("Try Guessing lower")
	if int(user_guess_number) < global.randomnumber:
			higher_lower_check_label_feedback.set_text("Try Guessing Higher")
	if int(user_guess_number) == global.randomnumber:
		higher_lower_check_label_feedback.set_text("YOU WIN!")




	pass # replace with function body


func _on_goto_main_Button_pressed():
	get_tree().change_scene("res://Main.tscn")

	pass # replace with function body


func _on_goto_pcguess_Button2_pressed():
	get_tree().change_scene("res://pc_guess_main.tscn")
	pass # replace with function body
