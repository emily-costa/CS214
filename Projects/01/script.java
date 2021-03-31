Script started on 2020-02-07 14:43:16-0500
]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ cat RectangleArea.java
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

]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ javac RectangleArea.java
]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 3
 enter its height: 4
The area is 12.00

]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 1.2
 enter its height: 3.4
The area is 4.08

]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 25
 enter its height: 10
The area is 250.00

]0;eac33@gold29: ~/Desktop/214/Projects/01/Java[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Java[00m$ wq  exit
exit

Script done on 2020-02-07 14:44:20-0500
