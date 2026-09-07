#!/bin/bash
for app in $(cat "/home/KJ/Priv/zainstalowane_aplikacje_moje.txt")
do
	sudo pacman -S --needed "$app"
done
