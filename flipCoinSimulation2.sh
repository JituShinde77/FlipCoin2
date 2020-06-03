echo "Welcome to Flip coin simulaiton 1"

declare -A result


while [[ ${result['Head']} -ne 21 && ${result['Tail']} -ne 21 ]]
do
	coin=$(( RANDOM%2 ))
	if [[ $coin -eq 0 ]]
	then
		result['Head']=$(( ${result['Head']}+1 ))
	else
		result['Tail']=$(( ${result['Tail']}+1 ))
	fi
done

echo "Head win: " ${result['Head']}" Times"
echo "Tail Win: " ${result['Tail']}" Times"

if [ ${result['Head']} -eq 21 ]
then
	echo "Head Win by :"$(( ${result['Head']} - ${result['Tail']} ))
elif [ ${result['Tail']} -eq 21 ]
then
	echo "Tail Win by :"$(( ${result['Tail']} - ${result['Head']} ))
else
	echo "Tie"
fi
