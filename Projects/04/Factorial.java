/*
* Emily Costa
* March 4, 2020
* CS 214 A
* Project 4 - given an integer n, returns n!
*/

import java.util.Scanner;

public class Factorial {

	public static int calc_factorial (int n){

		int total = 1;

		for (int i = n; i > 0; i--){
			total *= i;
		}

		return total;
	}

	public static void main (String[] args){

		// promt user for n value
		System.out.print("\n To compute n!, enter n: ");
		// create connection to standard in
		Scanner input = new Scanner(System.in);
		// scan in input
		int n = input.nextInt();
		// call calc_factorial function and print result
		System.out.printf(" The factorial is: %d \n\n", calc_factorial(n));
	}



} // end class Factorial
