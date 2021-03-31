/* Ostrich.java provides a Ostrich subclass of Flyingbird.
 *
 * Completed by: Emily Costa
 * Date: 4/27/2020
 ******************************************************/

public class Ostrich extends Walkingbird{
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Ostrich(String name) {
        super(name);
    }

    /* An Ostrich's class name
     * Return: an Ostrich's class name
     */
    public String getClassName() {
        return "Ostrich";
    }
   
    /* A Ostrich's Call
     * Return: a ostrich-call ("snork!").
     */
    public String call() {
        return "Snork!";
    }
   
   }
   
   