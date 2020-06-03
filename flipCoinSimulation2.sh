echo "Welcome to Flip coin simulaiton 1"

coin=$(( RANDOM%2 ))
if [[ $coin -eq 0 ]]
then
	echo "Winner is Head"
else
	echo "Winner is Tail"
fi
