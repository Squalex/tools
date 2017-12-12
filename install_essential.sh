#!/bin/bash


PS3='Please enter your choice: '
options=("First choice" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "First choice")
            echo "Installing Git ..."
			sudo apt-get -y install git > /dev/null
            echo "Installing python3"
			sudo apt-get -y install python3
            echo "Installing Python3-pip"
			sudo apt-get -y install python3-pip > /dev/null
			echo "Installing Vim ..."
			sudo apt-get -y install vim > /dev/null
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done