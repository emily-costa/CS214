Script started on 2020-02-20 00:25:49-0500
]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ cat script      J YearCodes.java
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
]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ cat YearCodes.java[1P[1P[1P[2@ja[1@v[1@a[1@c
]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ javac YearCodes.javac[1P YearCodes.java     


 To compute the corresponding integer code: 
 Enter name of academic year: freshman
 The integer code is: 1 


]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ java YearCodes


 To compute the corresponding integer code: 
 Enter name of academic year: sophomore
 The integer code is: 2 


]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ java YearCodes


 To compute the corresponding integer code: 
 Enter name of academic year: junior
 The integer code is: 3 


]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ java YearCodes


 To compute the corresponding integer code: 
 Enter name of academic year: senior
 The integer code is: 4 


]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ java YearCodes


 To compute the corresponding integer code: 
 Enter name of academic year: prek
 The integer code is: 0 


]0;eac33@gold30: ~/Desktop/214/Labs/03/Java[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Java[00m$ exit
exit

Script done on 2020-02-20 00:26:38-0500
