#!/bin/bash
#Skrypt pozwalajacy wybrac co mam byc wykonane
#-memory
#-CPU
#-Polacznia TCP
#-kernel
#######################
sever_name=${hostname}

function memory_check() {
	echo ""
	echo "Memory uasge on ${server_name} is: "
	free -h
	echo""
}
function cpu_check() {
	echo ""
	echo "CPU load on ${server_name} is: "
	uptime
	echo ""
}
function tcp_check() {
	echo ""
	echo "TCP connection on ${server_name} is: "
	wc -l < /proc/net/tcp
	echo ""
}
function kernel_check() {
	echo ""
	echo "Kernel version on ${server_name} is: "
	uname -r
	echo ""
}
function whoami_check() {
	echo ""
	echo "Who am I ?"
	echo "I'm ${server_name}"
	whoami
	echo""
}
function all_check() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
	whoami_check
}
#all_check
##
# kolory zmiennych
##
green='\e[32m'
blue='\e[34m'
red='\e[31m'
clear='\e[0m'
##
#kolory funkcji
##
ColorGreen() {
	echo -ne "${green}${1}${clear}"
}
ColorBlue() {
	echo -ne "${blue}${1}${clear}"
}
#Funkcaja dla meu
function menu() {
	echo -ne "
	My First Menu
	$(ColorGreen '1)') Memory usage
	$(ColorGreen '2)') CPU load
	$(ColorGreen '3)') Number of TCP connection
	$(ColorGreen '4)') Kernel version
	$(ColorGreen '5)') Check All
	$(ColorGreen '6)') Who am I?
	$(ColorGreen '0)') Exit
	$(ColorBlue 'Choose an option: ') "
	read a
	case $a in
		1) memory_check ; menu ;;
		2) cpu_check ; menu ;;
		3) tcp_check ; menu ;;
		4) kernel_check; menu ;;
		5) all_check ; menu ;;
		6) whoami ; menu ;;
		0) exit 0 ;;
		*) echo -e "${red}Wrong option.${clear}"; menu
	;;
		esac
	}
menu
