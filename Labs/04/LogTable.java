/*
* Emily Costa
* Feb 28, 2020
* CS 214 A
* Lab 4 - Display simple algoirthm: 
* 1. Get start, stop, and increment. 
* 2. For count = start to stop by increment: 
* Display count and the logarithm of count
*/

import java.util.Scanner;

public class LogTable {

	// function log_table to read in start and stop values
	// print incrimenting by .5 and the corresponding log value
	public static void log_table (double start, double stop) {

		// while loop to calculate and print results 
		while (start <= stop) {
			System.out.printf(" The logarithm of %.1f is %.5f \n", start, Math.log10(start));
			start += .5; // incriment start by .5
		} // end of while loop

		return;
	} // end log_Table method

	public static void main (String[] args) {

		// promt for start value
		System.out.print("\n To compute logarithms: ");
		System.out.print("\n Enter start value: ");
		// create connection to standard in
		Scanner input = new Scanner(System.in);
		// scan in input
		double start = input.nextDouble();
		// promt for stop value
		System.out.print(" Enter stop value: ");
		// scan in input
		double stop = input.nextDouble();

		// call log_table function to print the results
		log_table(start,stop);

		System.out.print("\n");

	} //end main method

} // end class LogTable