/* Bird.java provides Bird class
 *
 * Completed by: Emily Costa
 * Date: 4/27/2020
 ******************************************************/

public class Bird {
    
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Bird(String name) {
        myName = name;
    }

    /* Name accessor
     * Return: myName.
     */
    public String getName() {
        return myName;
    }

    /* A Bird's class name
     * Return: a Bird's class name
     */
    public String getClassName() {
        return "Bird";
    }
   
    /* A Bird's Call
     * Return: a bird-call ("Squaaaawk!").
     */
    public String call() {
        return "Squaaaawk!";
    }

    /* A Bird's Movement
    * Return: a default bird-movement ("").
    */
    public String movement() {
        return "    ";
    }


   /* Output a Bird 
    * Output: Everything known about myself
    *          to the standard output stream.
    */
    public void print() {
      System.out.println( getName() + " " + getClass().getName() + " " + movement() + " and says " + call() );
    }


    private String myName;
   
}