// Binar.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <string>

using namespace std;

int user_input_lowest;
int user_input_highest;
int copy_of_user_input_lower;
string does_it_equal = "";



int main()
{	
	/*get info from user */
	cout << "enter highest number:";
	cin >> user_input_highest;
	cout << "enter lowest number:";
	cin >> user_input_lowest;
	user_input_lowest;
	copy_of_user_input_lower = user_input_lowest -1;

	/* Tell array how many values*/

	int *user_all_numbers = new int[user_input_highest];
	/*populate array*/
	for (int i = user_input_lowest; i < user_input_highest; ++i)
	{	
		/*assign values to array*/
			user_all_numbers[i] = ++copy_of_user_input_lower;
		

	}

	/*find mid point*/
	int mid = (user_input_highest + user_input_lowest) / 2;
	do {
		
		
		/* find out if users number is less than greater than or equal to mid*/
		cout << " use >, <, = to tell me how far or if your number is equal to: " << user_all_numbers[mid];
		cin >> does_it_equal;
		
		/* calculate  what is left in during binary search, return to redo loop if it isnt = */
		if (does_it_equal == ">")
		{
			mid = (mid - 1);
			user_input_highest = mid;
			mid = (user_input_lowest + mid) / 2;
					   			
		}

		if (does_it_equal == "<")
		{
			(mid = mid + 1);
			user_input_lowest = mid;
			mid = (user_input_highest + mid) / 2;
		  
		}

		if (does_it_equal == "=")
		{
			cout << "Your number is " << user_all_numbers[mid];
			return 0;
		}
	} while (does_it_equal != "=");

	

	delete[] user_all_numbers;


	return 0;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
