#!/bin/bash
DIR="$(dirname "$0")"
plik="$DIR/test.txt"
read -p "Czego szukasz: " szukane
while [[ -z ${szukane} ]]; do 
	echo "Podaj czego szukasz. Pole nie moze byc puste"
	read -p "podaj szukane haslo " szukane
done
if grep -q "${szukane}" "${plik}"; then
	echo "znaleziono"
else
	echo "nie znalezniono"
fi


