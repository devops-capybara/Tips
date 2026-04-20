#!/bin/bash
DIR="$(dirname "$0")"
plik="$DIR/test.txt"
read -p "Szukane slowo: " szukane
if grep -q "${szukane}" "${plik}"; then
	echo "Znaleziono"
else
	echo "Nie znaleziono"
fi

