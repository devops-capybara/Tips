#!/bin/bash
#Skrypt ktory zwraca aktualny status
# - zuzycie pamieci
# - CPU
# - polaczenia TCP
# wersja kernela
###
server_name=${hostname}

echo "$server_name"
function whoami_check() {
       echo ""
	echo "Kime jestem?"
 	echo "${hostname}"
	whoami
	echo ""
}	
function memory_check() {
	echo ""
	echo "Aktualne zuzycie ${server_name} to: "
	free -h
	echo ""
}
function cpu_check() {
	echo ""
	echo "obciazenie CPU ${server_name} to: "
	uptime
	echo ""
}
function tcp_check() {
	echo ""
	echo "Polaczniea TCP ${server_name}: "
	wc -l < /proc/net/tcp 
	echo ""
}
function kernel_check() {
	echo ""
	echo "Akualna wersja ${server_name}"
	uname -r
	echo ""
}
function all_check() {
	whoami_check
	memory_check
	cpu_check
	tcp_check
	kernel_check
	}
#Wywolanie funkcji all_check
all_check
