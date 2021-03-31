/* Birds.java illustrates inheritance and polymorphism.
 *
 * Completed by: Emily Costa
 * Date: 4/27/2020
 *********************************************************/

public class Birds {
  
    public static void main(String[] args) {
        System.out.println("\nWelcome to the Bird Park!\n");

        Duck bird1 = new Duck("Donald");
        bird1.print();
  
        Goose bird2 = new Goose("Mother Goose");
        bird2.print();
  
        Owl bird3 = new Owl("Woodsey");
        bird3.print();

        Penguin bird4 = new Penguin("Penny");
        bird4.print();

        Ostrich bird5 = new Ostrich("Orville");
        bird5.print();

        Kiwi bird6 = new Kiwi("Kevin");
        bird6.print();

        System.out.println();
        System.out.println("Hope you had fun! Come back soon!");
        System.out.println();
      }
}