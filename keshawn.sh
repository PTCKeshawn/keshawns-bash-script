#!/bin/bash
celsius_to_fahrenheit() {
	echo "Enter temperature in Celsius:"
	read celsius
	fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
	echo "$celsius°C is equal to $fahrenheit°F"
}

fahrenheit_to_celsius() {
	echo "enter temperature in celcius:"
	read fahrenheit
	celcius=$(echo "scale=2; ($fahrenheit -32) * 5/9" | bc)
	echo "fahrenheit°F is equal to $celcius°C"
}
echo "welcome to keshawns temperature convertor"
echo "Choose the conversion type:"
echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read choice

if [ "$choice" -eq 1 ]; then
    celsius_to_fahrenheit
elif [ "$choice" -eq 2 ]; then
    fahrenheit_to_celsius
else
    echo "Invalid choice. Please enter 1 or 2."
fi
