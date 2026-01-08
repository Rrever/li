# Basic calculator script
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "choose operator:"
echo "1.Addition(+)"
echo "2.Subtraction(-)"
echo "3.Multiplacation(*)"
echo "4.Division(/)"
echo "5.Exit"
read choice

case $choice in
	1)
	result=$((num1+num2))
	echo "Result :$result"
	;;
	2)
	result=$((num1-num2))
	echo "Result :$result"
	;;
	3)
	result=$((num1*num2))
	echo "Result :$result"
	;;
	4)
	#Check for divison by zero
	if ["$num2"=="0"];then
	echo"Error: Divison by zero is not allowed."
	else 
	   result=$(echo"scale;$num1 / $num2"|bc)
	   echo "result:result"
	   fi
	   ;;
	5)
	echo "Exit"
	exit 0
	;;
	*)
	echo "invalid choice!"
	;;
	esac
