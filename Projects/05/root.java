/*
* Emily Costa
* March 11, 2020
* CS 214 A
* Project 5 -  
* Calculate the roots using the quadratic equaiton
* given values for a, b, and c from the user
*/

import java.util.Scanner;

public class root {

	public static void calculate (double a, double b, double c, double[] results) {

		double disc = Math.pow(b,2) - (4 * a * c);

		if (disc < 0){
			results[0] = 0;
			return;
		}
		else if (disc == 0) {
			results[0] = 1;
			results[1] = (-b + Math.sqrt(disc)) / (2 * a);
			return; 
		}
		else if (disc > 0) {
			results[0] = 2;
			results[1] = (-b + Math.sqrt(disc)) / (2 * a);
			results[2] = (-b - Math.sqrt(disc)) / (2 * a);
			return;
		}
		

	} // end of method calculate

	public static void main (String[] args) {

		// promt user and scan in string
		System.out.print("\n To calculate the root(s): ");
		System.out.print("\n Enter a value for a, b, and c: ");
		// create a connection names keyboard
		Scanner keyboard = new Scanner(System.in);
		// read in values
		double a = keyboard.nextDouble();
		double b = keyboard.nextDouble();
		double c = keyboard.nextDouble();

		// create an array to hold the roots
		double[] resultList = new double[3];
		// call function to create the substrings
		calculate(a,b,c,resultList);
		// if statements to print the proper results
		if (resultList[0] == 0){
			System.out.print(" There are no real solutions. \n\n");
		}
		else if (resultList[0] == 1){
			System.out.printf(" The root is %.2f \n\n", resultList[1]);
		}
		else if (resultList[0] == 2){
			System.out.printf(" The roots are %.2f and %.2f \n\n", resultList[1], resultList[2]);
		}

	} // end of main method

} // end class root