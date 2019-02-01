using Godot;
using System;

namespace binarysearch {

	public class Main : Control
	{
	    	LineEdit highest_number_textbox;
			TextEdit highest_number_current;
			TextEdit user_current_guess;
			TextEdit pc_current_guess;
			Label label_user_input;
			Button Buttonguessmain;
			Button Buttonpcfiguremain;
			Button Quit;
			Random rand = new Random();
			int user_input_highest;
			int amount_of_user_guesses;
			int guess_count;
			int randomnumber;
			bool text_change_flag = false;
		// Member variables here, example:
	    // private int a = 2;
	    // private string b = "textvar";
	
	    public override void _Ready()
	    {
	        // Called every time the node is added to the scene.
	        // Initialization here
			
			highest_number_textbox = (LineEdit) GetNode("./user_input_highest/user_highest_declare");
			highest_number_current = (TextEdit) GetNode("./current_number/TextEdit");
			user_current_guess = (TextEdit) GetNode("./user_guesses_current/current__user_guesses_textbox");
			pc_current_guess = (TextEdit) GetNode("./pc_guesses_current/current_pc_guesses");
			label_user_input = (Label) GetNode("./user_input_highest");
			Buttonguessmain = (Button) GetNode("./Polygon2D/Label/Buttonguessmain");
			Buttonpcfiguremain = (Button) GetNode("./Polygon2D/Label/Buttonpcfiguremain");
			Quit = (Button) GetNode("./Quit");
			Buttonguessmain.Text = ("You guess the Program's number");
			Buttonpcfiguremain.Text = ("Program guesses your number");
			Quit.Text = ("Quit");
			
		}
	
	    public override void _Process(float delta)
	    {
	//        // Called every frame. Delta is time since last frame.
	//        // Update game logic here.
	        highest_number_current.Text = user_input_highest.ToString();
			user_current_guess.Text = amount_of_user_guesses.ToString();
			pc_current_guess.Text = guess_count.ToString();
			if (text_change_flag == true)
				label_user_input.Visible = false;
			else
				label_user_input.Visible = true;
	    }
		
		public class transfer_variable_from_main
		
    	{	
		public transfer_variable_from_main()
		{}
		public int MyAutoImplementedProperty { get; set; }
			private string user_input_highest;
		
			public string user_input_highest_transfer
				{
				get { return user_input_highest; }
				set { user_input_highest = value;}
			}
		}
		
		private void _on_Buttonpcfiguremain_pressed()
		{
		// Replace with function body
			text_change_flag = true;
			GetTree().ChangeScene("res://pc_guess_main.tscn");
		}
		
		private void _on_Buttonguessmain_pressed()
		{
		    // Replace with function body
			text_change_flag = true;
			
			GetTree().ChangeScene("res://player_guess_main.tscn");
		}

		
		private void _on_user_highest_declare_text_changed(String new_text)
		{
		    // Replace with function body
			
			user_input_highest = Int32.Parse(highest_number_textbox.GetText());
			if (user_input_highest >= 1)
			randomnumber = (rand.Next(1,user_input_highest));
		}
		
		
		private void _on_TextEdit_text_changed()
		{
		    // Replace with function body
		}
		
		
		private void _on_button_reset_count_pressed()
		{
		    // Replace with function body
			text_change_flag = false;
			user_input_highest = 0;
			highest_number_textbox.SetText(user_input_highest.ToString());
			guess_count = 0;
			amount_of_user_guesses = 0;
		}
		
		
		private void _on_help_button_pressed()
		{
		    // Replace with function body
		}
		
		private void _on_Quit_pressed()
		{
    		GetTree().Quit();
		}

	}
	
	
}






