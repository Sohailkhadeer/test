#!/bin/bash -x

function coinfliping ( )
{
echo "flipping coin"

echo "number of time want the coin to flip"
read flip
echo $flip
Head=0
Tail=0
declare -A Counts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%2)) -eq 1 ]
then
((Head++))
else
((Tail++))
fi
if [ $Head -gt 21 ]
then
echo "head team win"
break
elif [ $Tail -gt 21 ]
then
echo "tail team win"
break
fi
done
echo "headcount="$Head
echo "tailcount="$Tail

noOfCounts[tail]=$countTail
noOfCounts[head]=$countHead

echo ${Counts[@]}

}
coinfliping
