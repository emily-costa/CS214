/*
 * Name: Emily Costa
 * Date: 4/8/2020
 * Proejct 7
 ***************************/
import java.util.Scanner;

class Name
{
    private String myFirst, myMiddle, myLast;

    public Name (String first, String middle, String last) {
      	myFirst = first;
      	myMiddle = middle;
      	myLast = last;
   		
   	}

   	public String getFirst() {
      return myFirst;
    }

    public String getMiddle() {
      return myMiddle;
    }

    public String getLast() {
      return myLast;
    }

    public String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
    } 

    void newName() {
		// prompt user for names and scan them in
		System.out.print("Enter first name: ");
		Scanner keyboard = new Scanner(System.in);
		String first = keyboard.nextLine();
		System.out.print("Enter middle name: ");
		String middle = keyboard.nextLine();
		System.out.print("Enter last name: ");
		String last = keyboard.nextLine();

		myFirst = first;
		myMiddle = middle;
		myLast = last;
    }

    // function to change first name
	void changeFirst() {
		myFirst = "John";
	}

	// function to change middle name
	void changeMiddle() {
		myMiddle = "Fitz";
	}

	// function to change last name
	void changeLast() {
		myLast = "Kennedy";
	}

	// fuction to return last, first, and middle initial
	public String lfmi(){
    	return myLast + ' ' + myFirst + ' ' + myMiddle.charAt(0);
    } 
};

public class Names  
{
	public static void main(String[] args)
	{

		Name aName = new Name("John", "Paul", "Jones");
    
    	assert aName.getFirst().equals("John") ;
      	assert aName.getMiddle().equals("Paul") ;
	    assert aName.getLast().equals("Jones") ;

        System.out.println(aName);
        assert aName.toString().equals("John Paul Jones");

        System.out.println("All tests passed!\n");
        // call function to intialize new names and check
        aName.newName();
        assert aName.toString().equals("Emily Abby Costa");
        // call fucntions to change first, middle, and last names
        aName.changeFirst();
    	assert aName.getFirst().equals("John");
    	aName.changeMiddle();
      	assert aName.getMiddle().equals("Fitz");
      	aName.changeLast();
	    assert aName.getLast().equals("Kennedy") ;
	    // caff function to get last, first, and middle initial
        assert aName.lfmi().equals("Kennedy John F");	    

        System.out.println("All tests passed!\n");
  	}
}