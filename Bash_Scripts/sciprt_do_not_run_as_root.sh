#!/bin/bash

#Nalezy dawac to na poczatku skryptu . W razie uruchomienia jako root nie pozwoli dzialac dalej i wylaczy skrypt
if (( $EUID == 0 )); then
	echo "Do not run as root"
	exit
fi
