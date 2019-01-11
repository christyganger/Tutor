#include <iostream>

using namespace std;
    const string out_main_welcome_dialog = "Hello, Welcome to Binary Search.";
    const string out_main_current_pc_guess_amount = "Current PC's amount of guesses:";
    const string out_main_current_user_guess_amount = "Current Player's amount of guesses:";
    const string out_main_highest_guess_in_number_prompt ="Please enter the highest number to guess from:";
    const string out_main_current_highest_num_prompt = "Current Highest Number";
    const string out_main_button_primary_gameplay_style_dialog = "Please Select: Play style";
    const string out_main_button_1_program_guesses_dialog = "PC guesses your number";
    const string out_main_button_2_user_guesses_dialog = "You guess the PC's number";
    const string out_main_button_3_reset_dialog = "Reset Game!";
    const string out_main_button_4_help_dialog = "HELP!";
    void display();
int main()
{

    int in_main_pc_guess_amount = 0;
    int in_main_user_guess_amount = 0;
    int in_main_highest_number_to_guess = 0;
    int main_current_highest_number = 0;
    bool main_button_1_pressed = false;
    bool main_button_2_pressed = false;
    bool main_button_3_pressed = false;
    bool main_button_4_pressed = false;
    display();

    return 0;
}

void display()
{
    cout << out_main_welcome_dialog << "\n";

}
