#include <iostream>
#include "temp_converter.h"
#include "arithmetic.h"

int main() {

    //Temp conversion
    double celsius = 20.0;
    double fahrenheit = celsius_to_fahrenheit(celsius);
    std::cout << celsius << "Celsius is" << fahrenheit << "Fahrenheit" << std::endl;

    double fahrenheit2 = 70.0;
    double celsius2 = fahrenheit_to_celsius(fahrenheit2);
    std::cout << fahrenheit2 << "Fahrenheit is" << celsius2 << "Celsius" << std::endl;

    //arthrimetic 
    double a = 10.0, b = 5.0;
    std::cout <<  "Addition: " << add(a, b) << std::endl;
    std::cout << "Subtraction: " << subtract(a, b) << std::endl;
    std::cout << "Multiplication: " << multiply(a, b) << std::endl;
    std::cout << "Division: " << divide(a, b) << std::endl;

    return 0;

}