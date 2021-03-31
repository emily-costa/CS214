/* Kiwi.java provides a Kiwi subclass of Flyingbird.
 *
 * Completed by: Emily Costa
 * Date: 4-25-20
 ******************************************************/

public class Goose extends Flyingbird{
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Goose(String name) {
        super(name);
    }

    /* A Goose's class name
     * Return: a Kiwi's class name
     */
    public String getClassName() {
        return "Goose";
    }
   
    /* A Goose's Call
     * Return: a kiwi-call ("Chichi!").
     */
    public String call() {
        return "Honk!";
    }
   
   }
   
   