/* Duck.java provides a Duck subclass of Bird.
 *
 * Completed by: EMily Costa 
 * Date: 4/27/2020
 ******************************************************/

public class Duck extends Flyingbird{
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Duck(String name) {
        super(name);
    }

    /* A Duck's class name
     * Return: "Duck"
     */
    public String getClassName() {
        return "Duck";
    }
   
    /* A Duck's Call
     * Return: a duck-call ("Quack!").
     */
    public String call() {
        return "Quack!";
    }
   
   }
   
   