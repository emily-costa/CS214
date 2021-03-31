/*
* Emily Costa
* Feb 28, 2020
* CS 214 A
* Lab 5 -  
* given a string named aString, and an integer named 
* pos, write a function that computes the two
* substrings formed by splitting aString about pos
*/

import java.util.Scanner;

public class Split {

	public static void splitter (String theString, int pos, String[] results) {
		// get length of string
		int length = theString.length();
		// create first substring 
		results[0] = theString.substring(0,pos);
		// create second substring 
		results[1] = theString.substring(pos,length);
		return;
	} // end of method Split

	public static void main (String[] args) {

		// promt user and scan in string
		System.out.print("\n To split a string: ");
		System.out.print("\n Enter the string: ");
		
		Scanner keyboard = new Scanner(System.in);
		String aString = keyboard.nextLine();
		// promt user and scan in integer
		System.out.print(" Enter splitting pos: ");
		int pos = keyboard.nextInt();
		// close scanner
		keyboard.close();
		// create an array to hold the new substrings
		String[] resultList = new String[2];
		// call fucntion to create the substrings
		splitter(aString, pos, resultList);
		//print results
		System.out.printf(" The two substrings are: 1. %s 2. %s\n\n", resultList[0], resultList[1]);

	} // end of main method

} // end class Split