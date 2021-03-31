/* Penguin.java provides a Penguin subclass of Flyingbird.
 *
 * Completed by: Emily Costa
 * Date: 4/27/2020
 ******************************************************/

public class Penguin extends Walkingbird{
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Penguin(String name) {
        super(name);
    }

    /* A Penguin's class name
     * Return: a Penguin's class name
     */
    public String getClassName() {
        return "Penguin";
    }
   
    /* A Penguin's Call
     * Return: a penguin-call ("huh-huh-huh!").
     */
    public String call() {
        return "Huh-huh-huh!";
    }
   
   }
   
   