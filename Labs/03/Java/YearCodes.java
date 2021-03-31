/*
* Emily Costa
* Feb 21, 2020
* CS 214 A
* Project 3 - Given a grade level (string) return the appropraite number code (int)
*/


import java.util.Scanner;  // include class for Scanner

public class YearCodes {

   public static int yearCode(String year) {

      if (year.equals("freshman"))
         return 1;
      else if (year.equals("sophomore"))
         return 2;
      else if (year.equals("junior"))
         return 3;
      else if (year.equals("senior"))
         return 4;
      else
         return 0;

   } // yearCode method

   public static void main (String[] args){
      // promt user for input
      System.out.println("\n\n To compute the corresponding integer code: ");
      System.out.print(" Enter name of academic year: ");

      // Scan in user input
      Scanner keyboard = new Scanner(System.in);
      String grade = keyboard.nextLine();

      // Print result from yearCode method
      System.out.printf(" The integer code is: %d \n\n\n", yearCode(grade));


   } // main method

} // Class YearCodes
