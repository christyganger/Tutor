extends Control
# Get node
var mid = 0
var user_input_highest = 0
var user_input_lowest = 0
var your_number_goes_here = 0
onready var my_number_is_textbox = get_node("your_number_is/my_number_is")
onready var user_input_highest_textbox = get_node("Label2/user_input_highest")
onready var Button_guess_button = get_node("Button_guess")
onready var Button_my_number_is_lower_button = get_node("Button_my_number_is_lower")
onready var Button_my_number_is_higher_button = get_node("Button_my_number_is_higher")
onready var pc_current_guess_out_textbox = get_node("pc_current_guess_out_mainintro/textbox_pc_current_guess_out")
onready var debug_out = get_node("debug")
func _ready():
	pc_current_guess_out_textbox.set_text(String(mid))
	debug_out.set_text("pc_current_guess_out_textbox.set_text(String(mid))")
	pass

func _on_my_number_is_text_changed(new_text):
	your_number_goes_here = int(my_number_is_textbox.get_text())
	debug_out.set_text("your_number_goes_here = int(my_number_is_textbox.get_text())")
	pass # replace with function body

func _on_user_input_highest_text_changed(new_text):
	user_input_highest = int(user_input_highest_textbox.get_text())
	debug_out.set_text("int(user_input_highest = user_input_highest_text_changed.get_text())")
	pass # replace with function body
	
func _on_Button_guess_pressed():
		
	# find mid point
	mid = (user_input_highest + user_input_lowest) / 2
	pc_current_guess_out_textbox.set_text(String(mid))
	debug_out.set_text("mid = (user_input_highest + user_input_lowest) / 2 pc_current_guess_out_textbox.set_text(String(mid))")
	pass
	# find out if users number is less than, greater than, or equal to guess
	# calculate what is left, using binary search, return if found
		
func _on_Button_my_number_is_lower_pressed():
			mid = mid - 1
			debug_out.set_text("(mid = mid - 1)")
			user_input_highest = mid
			debug_out.set_text("user_input_highest = mid")
			user_input_highest_textbox.set_text(String(user_input_highest)) #might be extra?
			debug_out.set_text("user_input_highest_textbox.set_text(String(user_input_highest))")
			
			pass
			
	
			
func _on_Button_my_number_is_higher_pressed():
				
				mid = mid + 1
				debug_out.set_text("(mid = mid + 1)")
				user_input_lowest = mid
				debug_out.set_text("mid = (user_input_lowest = mid")
				
				pass
 #yay end


	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass







