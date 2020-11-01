package org.motaouia.jsf.models;

public class TemperatureConvertor {
	
	private double celsius;
	private double fahrenheit;
	private boolean initial = true; 
	
	public double getCelsius() {
		return celsius;
	}
	public void setCelsius(double celsius) {
		this.celsius = celsius;
	}
	public double getFahrenheit() {
		return fahrenheit;
	}
	public boolean isInitial() {
		return initial;
	}
	
	
	public String reset(){
		this.initial = true;
		this.fahrenheit = 0;
		this.celsius = 0;
		
		return "Reset";
	}
	
	public String celsiusToFahrenheit(){
		this.initial = false;
		this.fahrenheit = ((this.celsius * 9) / 5) + 32;
		
		return "Calculated";
	}
}