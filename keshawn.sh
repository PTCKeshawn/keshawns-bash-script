#!/bin/bash
echo "choose the conversion type:"
echo "1. Celcius to Fahrenheit"
echo "2. Fahrenheit to Celcius"
read choice

if ["$choice" -eq 1]; then
	echo"enter temperature in celius:"
	read celcius
	fahrenheit=$(echo "scale=2; ($celius* 9/5+32" |bc)
	echo "$celius°C is equal to $fahrenheit°F"
elif [ "$choice" -eq 2 ]; then
	echo "Enter temperature in Fahrenheit:"
	read fahrenhei
	celsius=$(echo "scale=2; ($fahrenheit - 32) * 5/9" | bc)
	echo "$fahrenheit°F is equal to $celsius°C"
else
	echo "invalid choice. Please enter 1 or 2"
fi
