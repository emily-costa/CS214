/* Walkingbird.java provides a subclass of Bird
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Emily Costa
 * Date: 4/28/2020
 ******************************************************/

import java.io.*;

public class Walkingbird extends Bird
{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Walkingbird(String name){
        super(name);
  }


  /* A Bird's Movement
  * Return: a default bird-movement ("walked past!").
  */
  public String movement() {
    return "walks past";
  }

}

