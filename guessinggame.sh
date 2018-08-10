function numberOfFiles
{
	number=$(ls | wc -l)
}
numberOfFiles
echo "Guess the number of files in the directory: "
read response
if [[ $response -eq $number ]]
then 
	echo "Congratulations, you guessed correctly!"
else
	while [ $response -ne $number ]
	do
		if [[ $response -lt $number ]]
		then 
			echo "Your guess was too low :("
		else
			echo "Your guess was too high :("
		fi
		echo "Guess the number of files in the directory again: "
		read response
	done
	echo "Congratulations, you guessed correctly!"
fi