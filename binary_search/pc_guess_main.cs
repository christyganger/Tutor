using Godot;
using System;
using binarysearch;

public class pc_guess_main : Node
{
    int mid = 0;
	int user_input_lowest = 0;
	int user_input_highest = binarysearch.Main.user_input_highest_other.user_input_highest.user_input_highest;
	// not implimented? int your_number_goes_here = 0;
	String text_buffer_out = "a random number has been placed in your number box for the pc to guess";
	LineEdit my_number_is_textbox;
	Button Button_guess_button;
	LineEdit pc_current_guess_out_textbox;
	TextEdit debug_out;
	TextEdit pc_guess_window;
	Label sprite_number_update_mid;
	Label sprite_number_update_lowest;
	Label sprite_number_update_highest;
	TextEdit user_guess_update;
	
	// Member variables here, example:
    // private int a = 2;
    // private string b = "textvar";

    public override void _Ready()
    {
        // Called every time the node is added to the scene.
        // Initialization here
        my_number_is_textbox = (LineEdit) GetNode("your_number_is/my_number_is");
		Button_guess_button = (Button) GetNode("Button_guess");
		pc_current_guess_out_textbox = (LineEdit) GetNode("pc_current_guess_out_mainintro/textbox_pc_current_guess_out");
		debug_out = (TextEdit) GetNode("debug");
		pc_guess_window = (TextEdit) GetNode("Label/pc_guess_count");
		sprite_number_update_mid = (Label) GetNode("Sprite/Label_mid/mid_number_line");
		sprite_number_update_lowest = (Label) GetNode("Sprite/Label_lowest/lowest_number_line");
		sprite_number_update_highest = (Label) GetNode("Sprite/Label_highest/highest_number_line");
		user_guess_update = (TextEdit) GetNode("user_guessed/user_guess_count");
		sprite_number_update_mid.Text = (mid.ToString());
		sprite_number_update_lowest.Text = (user_input_lowest.ToString());
		sprite_number_update_highest.Text = (user_input_highest.ToString());
		my_number_is_textbox.Text = (global.randomnumber.ToString());
		mid = (user_input_highest + user_input_lowest) / 2;
		pc_current_guess_out_textbox.Text = (mid.ToString());
    }

    public override void _Process(float delta)
    {
//        // Called every frame. Delta is time since last frame.
//        // Update game logic here.
		debug_out.Text = text_buffer_out + "\n";
		user_guess_update.Text = (global.amount_of_user_guesses.ToString());
		pc_guess_window.Text = (global.guess_count.ToString());       
    }
	private void  _on_Button_guess_pressed()
	{
		if (mid == global.randomnumber)
		text_buffer_out = ("The pc guess it!");
		global.guess_count +=1;
		pc_guess_window.Text = (global.guess_count.ToString());
		Button_guess_button.Visible = false;
		
		if (mid < global.randomnumber)
		mid = (mid - 1);
		user_input_lowest = mid;
		sprite_number_update_lowest.Text = (user_input_lowest.ToString());
		mid = (user_input_highest + user_input_lowest) / 2;
		sprite_number_update_mid.Text = (mid.ToString());
		pc_current_guess_out_textbox.Text = (mid.ToString());
		text_buffer_out = ("Click Guess to Guess again!");
		global.guess_count +=1;
		
		
	if (mid > global.randomnumber)
		mid = (mid + 1);
		user_input_highest = mid;
		sprite_number_update_highest.Text = (user_input_highest.ToString());
		mid = (global.user_input_highest + user_input_lowest) / 2;
		pc_current_guess_out_textbox.Text = (mid.ToString());
		sprite_number_update_mid.Text = (mid.ToString());
		text_buffer_out = ("Click Guess to Guess again!");
		global.guess_count +=1;
		
		
	}
	
	private void _on_main_Button_pressed()
	{
		GetTree().ChangeScene("res://Main.tscn");
	}
}
