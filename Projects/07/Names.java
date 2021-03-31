/*
 * Name: Emily Costa
 * Date: 4/8/2020
 * Proejct 7
 ***************************/

import java.util.Scanner;

class Name {

	private String myFirst, myMiddle, myLast;

	public Name (String first, String middle, String last){
		myFirst = first;
		myMiddle = middle;
		myLast = last;
	}

	// function to change first name
	void changeFirst(String newName) {
		myFirst = newName;
	}

	// function to change middle name
	void changeMiddle(String newName) {
		myMiddle = newName;
	}

	// function to change last name
	void changeLast(String newName) {
		myLast = newName;
	}

	//operation to return last, frist, middle initial
	public String lfmi() {
		return myLast + ' ' + myFirst + ' ' + myMiddle.charAt(0);
	}

	// fuction to print name
	public String toString(){
    	return myFirst + ' ' + myMiddle + ' ' + myLast;
    } 

};

public class Names {


	public static Name Initialize() {

		// prompt user for names and scan them in
		System.out.print("\n Enter first name: ");
		Scanner keyboard = new Scanner(System.in);
		String first = keyboard.nextLine();
		System.out.print(" Enter middle name: ");
		String middle = keyboard.nextLine();
		System.out.print(" Enter last name: ");
		String last = keyboard.nextLine();

		Name aName = new Name(first, middle, last);

		return aName;
	} 

	public static void main (String[] args){
		// call fucntion to intiialize new Name
		Name aName = Initialize();
		// print name
		System.out.println(" " + aName);
		// print last, first, middle initial
		System.out.print(" " + aName.lfmi());

		// Change first name
		System.out.print("\n\n Enter new first name: ");
		Scanner keyboard = new Scanner(System.in);
		String name = keyboard.nextLine();
		aName.changeFirst(name);
		System.out.println(" " + aName);

		// Change middle Name
		System.out.print("\n Enter new middle name: ");
		name = keyboard.nextLine();
		aName.changeMiddle(name);
		System.out.println(" " + aName);

		// Change last Name
		System.out.print("\n Enter new last name: ");
		name = keyboard.nextLine();
		aName.changeLast(name);
		System.out.println(" " + aName + "\n");
		// print last, first, middle intitial of new name
		System.out.print(" " + aName.lfmi() + "\n\n");

	}

}
