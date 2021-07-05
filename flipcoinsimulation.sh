#!/bin/bash -x

#uc_1 and uc_2

heads=0
tails=0
read -p "enter loop number : " n
for ((i=1;i<=n;i++))
do
flipcoin=$((RANDOM%2))
if [ $flipcoin -eq 0 ]
then
	heads=$((heads+1))
else 
	tails=$((tails+1))
fi
done

echo headscount=$heads
echo tailscount=$tails

#uc_3

if (($heads > 21))
then
		echo "Heads won"
elif (($tails > 21))
then
		echo "Tails won"
else
		echo "Tie"
fi

if(($heads>$tails))
then
	diff=$(($heads-$tails))
	echo "Heads won by Tails more than $diff times"
elif(($tails>$heads))
then
	diff=$(($tails-$heads))
	echo "Tails won by Heads more than $diff times"
fi

#uc_4

H=$heads
T=$tails
if (("$H" = "$T"))
then
	if (("$diff"<=2))
	then
		echo "Heads won by Tails more than $diff times"
		echo "Tails won by Heads more than $diff times"
	fi
	while (($diff<=2))
	do
		flipcoin()

	done
	echo "if while done"
	if [ $heads -gt $tails ]
	then
	        echo "Head Winner "
	        print
	elif [ $heads -lt $tails ]
	then
        	echo "Tail Winner "
        	print
fi
