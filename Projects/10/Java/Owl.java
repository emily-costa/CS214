/* Owl.java provides an Owl subclass of Bird.
 *
 * Completed by: EMily Costa
 * Date: 4/27/2020
 ******************************************************/

public class Owl extends Flyingbird {

    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Owl(String name) {
        super(name);
    }

    /* A Owl's class name
     * Return: a Owl's class name
     */
    public String getClassName() {
        return "Owl";
    }
   
    /* An Owl's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
    public String call() {
        return "Whoo-hoo";
    }
   
   } 