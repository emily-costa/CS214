/************************************************
 * Emily Costa
 * 22 April 2020
 * Project 09
 * Traverse through list to find value
 ************************************************/

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Search {

	//recive: aList and Integer
	//return: index of Integer in aList
	public static Integer Search(LinkedList<Integer> aList, Integer num) {

		int i = 0;
     	Iterator<Integer> listIterator = aList.iterator();
     	
      	while( listIterator.hasNext() ) {
        	if( listIterator.next() == num ){
            	return i;
          	}
          	else {
            	i += 1;
          	}
      	}
      	return -1;
  	}

	public static void main(String [] args) {
		// define list1, list2, list3 here ...
	    LinkedList<Integer> list1 = new LinkedList<Integer>();
	    LinkedList<Integer> list2 = new LinkedList<Integer>();
	    LinkedList<Integer> list3 = new LinkedList<Integer>();
	    LinkedList<Integer> list4 = new LinkedList<Integer>();

	    list1.add(99);    // 99, 88, 77, 66, 55
	    list1.add(88);    
	    list1.add(77);
	    list1.add(66);  
	    list1.add(55);

	    list2.add(55);    // 55, 66, 77, 88, 99
	    list2.add(66);    
	    list2.add(77);  
	    list2.add(88);  
	    list2.add(99);  
	  
	    list3.add(55);    // 55, 77, 99, 88, 66
	    list3.add(77);    
	    list3.add(99);  
	    list3.add(88);  
	    list3.add(66); 

	    list4.add(55);    // 55, 77, 98, 88, 66
	    list4.add(77);    // doens't have 99
	    list4.add(98);  
	    list4.add(88);  
	    list4.add(66); 

	    // display index or -1 if not in list
	    System.out.println("Index of 99 in list1: " + Search(list1,99));
	    System.out.println("Index of 99 in list2: " + Search(list2,99));
	    System.out.println("Index of 99 in list3: " + Search(list3,99));
	    System.out.println("Index of 99 in list3: " + Search(list4,99));
	}
}