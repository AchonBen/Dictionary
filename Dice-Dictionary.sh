#!/bin/bash -x

declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

while [[ $((dice[1])) -lt 10 && $((dice[2])) -lt 10 && $((dice[3])) -lt 10 && $((dice[4])) -lt 10 && $((dice[5])) -lt 10 && $((dice[6])) -lt 10 ]]


do
	diceRolled=$((RANDOM%6+1))
	timesDiceRolledPreviously=$((dice[$diceRolled]))
	dice[$diceRolled]=$(( $timesDiceRolledPreviously + 1 ))
done
echo ${dice[@]}



