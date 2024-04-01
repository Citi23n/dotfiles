#!/bin/env bash
# Check if the user is root
echo "You are about to run a big application install script."
echo "Are you sure you want to continue? (y/N)"
read ans
if [ "$ans" != "y" ]; then
	echo "No problem. Have a nice day!"
	exit 1
fi
if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi
# Update the package database
echo "Updating package database..."
sudo pacman -Sy
# Read the app_list.txt file and install each application
echo "Installing applications..."
while read app; do
	echo "Installing $app..."
	sudo pacman -S "$app" --noconfirm
done < app_list.txt
echo "Installation complete"
