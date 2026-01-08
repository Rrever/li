#!/bin/bash

# Basic calculator script
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose operator:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Exit"
read choice

case $choice in
    1)
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    2)
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    3)
        result=$((num1 * num2))
        echo "Result: $result"
        ;;
    4)
        
        if [ "$num2" = "0" ]; then
            echo "Error: Division by zero is not allowed."
        else
		# result=$(num1 / num2)
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $result"
        fi
        ;;
    5)
        echo "Exit"
        exit 0
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
