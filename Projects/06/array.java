/*
* Emily Costa
* 214 A
* March 18, 2020
* Project 06 - read in an array from keyboard from user
* and print the values
*/

import java.util.Scanner;

public class array {

public static void main (String[] args) {
	// promt user 
	System.out.print("\n Enter the number of values in the array: ");
	// scan in input
	Scanner input = new Scanner(System.in);
	int size = input.nextInt();
	// create an array
	double array[] = new double[size];
	// call function to input array values
	input(array, size);
	// call function to print array
	print(array, size);

	System.out.print("\n\n");
} // end main function

public static void input(double[] array, int size) {

	int i;
	Scanner keyboard = new Scanner(System.in);
	// for loop to read in values
	for (i = 0; i < size; i++){
		System.out.printf(" Enter value %d: ", i);
		double num = keyboard.nextDouble();
		array[i] = num;
	} // end for loop

} // end input function

public static void print(double[] array, int size){

	int i;
	System.out.print(" The array's values are: ");
	// for loop to print values
	for (i = 0; i < size; i++){
		System.out.printf("%.2f ", array[i]);
	} // end for loop

} // end print function

} // end class array
