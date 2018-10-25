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
	pass


func _process(delta):
	player_guess_amount.set_text(String(global.amount_of_user_guesses))
	highest_number_box.set_text(String(global.user_input_highest))
	pc_guess_amount.set_text(String(global.guess_count))
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass



func _on_user_guess_TextEdit_text_changed():
	user_guess_number = int(user_guessing.get_text())
	pass # replace with function body




func _on_check_Button_pressed():
	global.amount_of_user_guesses += 1
	if user_guess_number > global.randomnumber:
			higher_lower_check_label_feedback.set_text("Try Guessing lower")
	elif user_guess_number < global.randomnumber:
			higher_lower_check_label_feedback.set_text("Try Guessing Higher")
	elif user_guess_number == global.randomnumber:
		prompt_user_box.set_text("YOU WIN!")
		get_node("check_Button").hide()




	pass # replace with function body


func _on_goto_main_Button_pressed():
	get_tree().change_scene("res://Main.tscn")

	pass # replace with function body



