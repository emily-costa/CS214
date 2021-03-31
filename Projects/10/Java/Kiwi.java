/* Kiwi.java provides a Kiwi subclass of Flyingbird.
 *
 * Completed by: Emily COsta
 * Date: 4/27/2020
 ******************************************************/

public class Kiwi extends Walkingbird{
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Kiwi(String name) {
        super(name);
    }

    /* A Kiwi's class name
     * Return: a Kiwi's class name
     */
    public String getClassName() {
        return "Kiwi";
    }
   
    /* A Kiwi's Call
     * Return: a kiwi-call ("Chichi!").
     */
    public String call() {
        return "Chichi!";
    }
   
   }
   
   