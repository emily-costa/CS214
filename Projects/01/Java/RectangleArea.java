 /* CircleArea.java computes the area of a circle.
 *
 * Emily Costa
 * Feb 12, 2020
 * CS 214A
 * Project 01
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function RectangleArea() computes a rectabgle's area
      * Parameter: width and height
      * Returns: the area of the rectangle
      */
     public static double RectangleArea(double w, double h) {
        return w * h;               // return an expression
     } 
	
  // main program
  public static void main(String[] args) {
      // prompt for width
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its width: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double width = keyboard.nextDouble();

      // prompt for height
      System.out.print(" enter its height: ");
      double height = keyboard.nextDouble();

      // output area
      System.out.printf("The area is %.2f\n\n", RectangleArea(width, height));
  } // main method

} // class CircleArea

