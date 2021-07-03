#!/bin/bash -x
heads=0
tails=0
read -p "enter loop number : " n
for ((i=0;i<=n;i++))
do
flipcoin=$((RANDOM%2))
if [ $flipcoin -eq 0 ]
then
	heads=$((heads+1))
else 
	tails=$((tails+1))
fi
done

echo headswon=$heads
echo tailswon=$tails
