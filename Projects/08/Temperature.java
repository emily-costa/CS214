
/***********************************************
 * Emily Costa
 * 4/14/2020
 * Project 8
 * Temp.java implements class Temp
************************************************/

class Temperature {

	private float degrees;
	private char scale;

	public Temperature(final float d, final char s) {
		degrees = d;
		scale = s;
	}

	// raise Temp degrees by stepValue
	public static Temperature raise(Temperature temp, float step) {
		float newDegree = temp.getDegrees() + step;
		Temperature newTemp = new Temperature(newDegree,temp.getScale());

		if (newTemp.validTemp() == false) {
			System.out.printf("NOT A VALID TEMPERATURE!");
			return temp;
		}
		return newTemp;
	}

	// lower Temp degrees by stepValue
	public static Temperature lower(Temperature temp, float step) {
		float newDegree = temp.getDegrees() - step;
		Temperature newTemp = new Temperature(newDegree,temp.getScale());

		if (newTemp.validTemp() == false) {
			System.out.printf("NOT A VALID TEMPERATURE!");
			return temp;
		}
		return newTemp;
	} 
	// compares two temp to see if they're equal
	public static Boolean equals(Temperature temp1, Temperature temp2) {
		Temperature convertTemp1 = temp1.convertF();
		Temperature convertTemp2 = temp2.convertF();

		if (convertTemp1.getDegrees() != convertTemp2.getDegrees()) {
			return false;
		}
		return true;
	}
	// compares two temps to see if less than
	public static Boolean less_than(Temperature temp1, Temperature temp2) {
		Temperature convertTemp1 = temp1.convertF();
		Temperature convertTemp2 = temp2.convertF();
		
		if (convertTemp1.getDegrees() < convertTemp2.getDegrees()) {
			return true;
		}
		return false;		
	}

	// check if valid temperature 
	public final boolean validTemp() {

		if ((scale == 'F' | scale == 'f' |
			 scale == 'C' | scale == 'c' |
			 scale == 'K' | scale == 'k') 
			&& ((degrees < 1000) && (degrees > -1000))) { 
			return true;
		}
		return false;
	}
	// function to get degrees and scale
	public final float getDegrees() {
		return degrees;
	}
	public final char getScale() {
		return scale;
	}
	// function to print Temperature
  	public final String toString() {
  		String strTemp = String.format("%.2f", degrees) + scale;
  		return strTemp;
  	}
	// convert temp to Fahrenheit
	public final Temperature convertF() {

		if (scale == 'C' | scale == 'c') {
			float newDegree = (float)((degrees * (9.0/5.0)) + 32.0);
			return new Temperature(newDegree,'F');
		}
		else if (scale == 'K' | scale == 'k') {
			float newDegree = (float)((degrees - 273.15) * (9.0/5.0) + 32.0);
			return new Temperature(newDegree,'F');
		}
		return new Temperature(degrees,'F');
	}
	// convert temp to Celsius
	public final Temperature convertC() {
		if (scale == 'F' | scale == 'f') {
			float newDegree = (float)((degrees - (32.0)) * (5.0/9.0));
			return new Temperature(newDegree,'C');
		}
		else if (scale == 'K' | scale == 'k') {
			float newDegree = (float)(degrees - 273.15);
			return new Temperature(newDegree,'C');
		}
		return new Temperature(degrees,'C');
	}
	// convert temp to Kelvin
	public final Temperature convertK() {
		if (scale == 'F' | scale == 'f') {
			float newDegree = (float)((degrees - (32.0)) * (5.0/9.0) + 273.15);
			return new Temperature(newDegree,'K');
		}
		else if (scale == 'C' | scale == 'c') {
			float newDegree = (float)(degrees + 273.15);
			return new Temperature(newDegree,'K');
		}
		return new Temperature(degrees,'K');
	}	

}