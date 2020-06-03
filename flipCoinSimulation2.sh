echo "Welcome to Flip coin simulaiton 1"

declare -A result

read -p "Enter the number of flip: " num

for (( i=0; i<$num; i++ ))
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
