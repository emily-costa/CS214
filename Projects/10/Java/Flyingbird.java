/* Flyingbird.java provides a subclass of Bird
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Emily Costa
 * Date: 4/27/2020
 ******************************************************/

import java.io.*;

public class Flyingbird extends Bird
{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Flyingbird(String name){
        super(name);
  }


  /* A Bird's Movement
  * Return: a default bird-movement ("flew past!").
  */
  public String movement() {
    return "flies past";
  }


}

