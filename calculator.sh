#!/bin/bash

echo "Welcome to the Simple Calculator!"
sleep 2
echo "hope you enjoy it!"
sleep 2
echo "Please enter the first number:"
read num1

echo "Please enter the operation (+, -, *, /):"
read operation

if [[ "$operation" -ne "+","-","*","/" ]]; then
	echo"invalid operation"
	exit 1 
echo "Please enter the second number:"
read num2

if [[ "$operation" == "+" ]]; then
    result=$((num1 + num2))
elif [[ "$operation" == "-" ]]; then
    result=$((num1 - num2))
elif [[ "$operation" == "*" ]]; then
    result=$((num1 * num2))
elif [[ "$operation" == "/" ]]; then
    if [[ "$num2" -eq 0 ]]; then
		echo "Error: Division by zero is not allowed."
	fi
else
	echo "Invalid operation. Please use +, -, *, or /."
        exit 1
fi
    result=$((num1 / num2))
else
    echo "Invalid operation. Please use +, -, *, or /."
    exit 1
fi

display_result() {
    echo "The result of $num1 $operation $num2 is: $result"
}

display_result

while true; do
    echo "Would you like to perform another calculation? (yes/no)"
    read answer

    if [[ "$answer" == "yes" ]]; then
        echo "Please enter the first number:"
        read num1

        echo "Please enter the operation (+, -, *, /):"
        read operation

        echo "Please enter the second number:"
        read num2

        if [[ "$operation" == "+" ]]; then
            result=$((num1 + num2))
        elif [[ "$operation" == "-" ]]; then
            result=$((num1 - num2))
        elif [[ "$operation" == "*" ]]; then
            result=$((num1 * num2))
        elif [[ "$operation" == "/" ]]; then
            if [[ "$num2" -eq 0 ]]; then
                echo "Error: Division by zero is not allowed."
                exit 1
            fi
            result=$((num1 / num2))
        else
            echo "Invalid operation. Please use +, -, *, or /."
            exit 1
        fi

        display_result

    elif [[ "$answer" == "no" ]]; then
        echo "Thank you for using the calculator!"
        break
    else
        echo "Please enter 'yes' or 'no'."
    fi
done

exit 0

