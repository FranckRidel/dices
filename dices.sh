#!/bin/bash
	clear

	again=1
	until [[ $nbDices =~ ^[0-9]+$ ]]; do
		echo -n "Combien de dés voulez-vous ? "
		read nbDices
	done

	tours=0
	totalCumul=0
	until [[ $again =~ ^[q|Q]$ ]]; do
		clear
		total=0
		for (( i=1 ; i<=nbDices ; i++)); do
			dice=$(( ( $RANDOM % 6 ) + 1 ))
			echo -e "\rDé $i : $dice"
			total=$((total+dice))
			totalCumul=$((totalCumul+dice))
		done
		let tours++
		echo -e "\nSomme des dés:	$total\n"
		echo "Tour n°:	$tours"
		echo -e "Total cumulé:	$totalCumul\n"
		echo -e "\nAppuyez sur Q pour quitter \nou sur une autre touche pour relancer"
		read -n1 again
	done

	clear




