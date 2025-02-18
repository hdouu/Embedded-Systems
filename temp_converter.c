#include "temp_converter.h"

double celsius_to_fahrenheit(double temp_celsius) {
	return (temp_celsius * 9 / 5) + 32; 
}

double fahrenheit_to_celsius(double temp_fahrenheit) {
	return (temp_fahrenheit - 32) * 5 / 9;
}


