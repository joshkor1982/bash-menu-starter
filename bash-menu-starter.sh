#!/bin/bash

set -euo pipefail

IFS=$'\n'
printf "\033c"

INVALID_SELECTION() {
echo "INVALID SELECTION. PRESS ENTER TO TRY AGAIN: "
read -r
}

MAIN_MENU() {
printf "\033c"
echo "
--------------------------------------------------
MAIN MENU
--------------------------------------------------
[0] EXIT
[1] RETURN TO MAIN MENU
[2] SUB MENU TO DO THINGS
--------------------------------------------------                       
SELECT AN OPTION TO CONTINUE:"
read -r MAIN_MENU_OPTIONS
case "${MAIN_MENU_OPTIONS}" in
    0)  clear && exit 0;;    
    1)  MAIN_MENU;;
    2)  SUB_MENU;;
    *)  INVALID_SELECTION;;
    esac
}

SUB_MENU() {
printf "\033c"
echo "
--------------------------------------------------
SUB MENU
--------------------------------------------------
[0] EXIT
[1] RETURN TO MAIN MENU
[2] START ADDING OPTIONS HERE..
[3] LIST FILES IN THE CURRENT DIRECTORY
--------------------------------------------------
SELECT AN OPTION TO CONTINUE:"
read -r SUB_MENU_OPTIONS
case "${SUB_MENU_OPTIONS}" in
    0) clear && exit 0;;
    1) MAIN_MENU;;
    2) echo "ADD SOME COOL COMMANDS ETC..";;
    3) ls -l && sleep 1
    SUB_MENU;;
    *) INVALID_SELECTION;;
    esac
}
MAIN_MENU
