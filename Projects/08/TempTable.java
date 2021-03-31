la/***********************************************
 * Emily Costa
 * 4/14/2020
 * Project 8
 * TempTable.java implements class Temp
************************************************/

import java.io.*;
import java.util.Scanner;

public class TempTable {

	public static Temperature initialize() {
		float degree; char scale = 'Z';

		Scanner keyboard = new Scanner(System.in);
		System.out.printf("Enter temperature: ");
		degree = keyboard.nextFloat();
		scale = keyboard.next().charAt(0);

		Temperature temp = new Temperature(degree,scale);

		if (temp.validTemp() == false) { 
			System.out.println("NOT A VALID TEMPERATURE!");
		}
		return temp;
	}

	public static void main (String[] args) {
		// input baseTemp
		System.out.printf("\nbaseTemp -> ");
		Temperature baseTemp = initialize(); 
		// input limitTemo
		System.out.printf("limitTemp -> ");
		Temperature limitTemp = initialize();
		// input stepValue
		System.out.printf("stepValue -> ");
		Scanner keyboard = new Scanner(System.in);
		System.out.printf("Enter value: ");
		float stepValue = keyboard.nextFloat();

		Temperature temp1 = baseTemp;
		Temperature temp2 = baseTemp;


		if (Temperature.equals(baseTemp,limitTemp) == true) {
			System.out.printf(baseTemp.convertF() + "\t" + baseTemp.convertC() 
											      + "\t" + baseTemp.convertK() + "\n");
		}
		else if (Temperature.less_than(baseTemp,limitTemp) == true) {

			while (Temperature.less_than(temp1,limitTemp) == true) {
				System.out.printf(temp1.convertF() + "\t" + temp1.convertC() 
											       + "\t" + temp1.convertK() + "\n");	
				temp1 = Temperature.raise(temp2,stepValue);
				temp2 = temp1;			
			} // end loop
			System.out.println(limitTemp.convertF() + "\t" + limitTemp.convertC() 
											        + "\t" + limitTemp.convertK() + "\n");
		}
		else if (Temperature.less_than(baseTemp,limitTemp) == false) {
			while (Temperature.less_than(temp1,limitTemp) == false) {
				System.out.println(temp1.convertF() + "\t" + temp1.convertC() 
											        + "\t" + temp1.convertK() + "\n");
				temp1 = Temperature.lower(temp2,stepValue);
				temp2 = temp1;
			}
			System.out.println(limitTemp.convertF() + "\t" + limitTemp.convertC() 
											        + "\t" + limitTemp.convertK() + "\n");
		}
	}
}