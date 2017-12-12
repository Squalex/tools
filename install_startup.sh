#!/bin/bash


PS3='Please enter your choice: '
options=("First choice" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "First choice")
            echo "For now nothing is done"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done