extends Control
# Get node
var mid = 0
var user_input_highest = 0
var user_input_lowest = 0
var your_number_goes_here = 0
onready var my_number_is_textbox = get_node("your_number_is/my_number_is")
onready var user_input_lowest_textbox = get_node("Label/user_input_lowest")
onready var user_input_highest_textbox = get_node("Label2/user_input_highest")
onready var Button_guess_button = get_node("Button_guess")
onready var current_mid_point_number_textbox = get_node("current_mid_point/current_mid_point_number")
onready var Button_my_number_is_lower_button = get_node("Button_my_number_is_lower")
onready var Button_my_number_is_higher_button = get_node("Button_my_number_is_higher")
onready var pc_current_guess_out_textbox = get_node("pc_current_guess_out_mainintro/pc_current_guess_out")
func _ready():
	pc_current_guess_out_textbox.set_text(String(mid))
	return

func _on_my_number_is_text_entered(new_text):
	your_number_goes_here = my_number_is_textbox.get_text()
	pass # replace with function body


func _on_user_input_lowest_text_entered(new_text):
	user_input_lowest = user_input_lowest_textbox.get_text()
	pass # replace with function body


func _on_user_input_highest_text_entered(new_text):
	user_input_highest = user_input_highest_textbox.get_text()
	pass # replace with function body
	
func _on_Button_guess_pressed():
	pc_current_guess_out_textbox.set_text(String(mid))
	pass	
	# make array
	var user_all_numbers = [user_input_lowest]

	# populate array
	var i = 0
	
	while (i < user_input_highest): 
		++i
		user_all_numbers.append(i)
		  
	# find mid point
	
	
	mid = (user_input_highest + user_input_lowest) / 2
	current_mid_point_number_textbox.set_text(String(mid)) 
	pc_current_guess_out_textbox.set_text(String(mid))
		
	# find out if users number is less than, greater than, or equal to guess
	# calculate what is left, using binary search, return if found
		
func _on_Button_my_number_is_lower_pressed():
			(mid = mid - 1)
			user_input_highest = mid
			user_input_highest_textbox.set_text(String(user_input_highest))
			mid = (user_input_lowest + mid) / 2
			current_mid_point_number_textbox.set_text(String(mid))
			pc_current_guess_out_textbox.set_text(String(mid))
			user_input_lowest_textbox.set_text(String(user_input_lowest))
	
			
func _on_Button_my_number_is_higher_pressed():
				
				(mid = mid + 1);
				user_input_lowest = mid
				user_input_lowest_textbox.set_text(String(user_input_lowest))
				mid = (user_input_highest + mid) / 2
				current_mid_point_number_textbox.set_text(String(mid))
				pc_current_guess_out_textbox.set_text(String(mid))
				user_input_highest_textbox.set_text(String(user_input_highest))
				pass
 #yay end


	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



