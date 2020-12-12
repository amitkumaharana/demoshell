#!/bin/bash -x
declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0
for((i=1;i<=20;i++))
do
        var=$((RANDOM%6+1))
        case $var in
        1)dice[1]=$((dice[1]+1));;
        2)dice[2]=$((dice[2]+1));;
        3)dice[3]=$((dice[3]+1));;
        4)dice[4]=$((dice[4]+1));;
        5)dice[5]=$((dice[5]+1));;
        6)dice[6]=$((dice[6]+1));;
        esac
done
echo number of times a dice is rolled is ${dice[@]} with respect to ${!dice[@]}
