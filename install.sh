#!/bin/bash

echo '############################################'
echo 'Squalex Administration Tools'
echo '############################################'

PS3='Please enter your choice: '
options=("Startup" "Essential" "Sublime Text" "Life" "Complete" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Startup")
            echo "Installing startup files ..."
            source ./install_startup.sh
            ;;
        "Essential")
            echo "Installing Essential ..."
            source ./install_essential.sh
            ;;
        "Sublime Text")
            echo "Installing Sublime Text ..."
            source ./install_sublimetext.sh
            ;;
        "Life")
            echo "Installing Life project and Virtual Env"
            source ./install_life.sh
            ;;
        "Complete")
            echo "Installing Complete toolbox"
            source ./install_startup.sh
            source ./install_essential.sh
            source ./install_sublimetext.sh
            source ./install_life.sh
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done