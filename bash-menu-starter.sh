#!/bin/bash

set -euo pipefail

IFS=$'\n'
printf "\033c"

INVALID_SELECTION() {
    echo "INVALID SELECTION. PRESS ENTER TO TRY AGAIN: "
    read -r
    }

MAIN_MENU() {
while :
do
clear
echo "
--------------------------------------------------
MAIN MENU
--------------------------------------------------
[0] EXIT
[1] RETURN TO MAIN MENU
[2] SUB MENU TO DO THINGS
--------------------------------------------------                       
SELECT AN OPTION TO CONTINUE:"
read -r MAIN_MENU
case "$MAIN_MENU" in

"0")    clear && exit 0;;    
"1")    MAIN_MENU;;
"2")    SUB_MENU;;
*)      INVALID_SELECTION;;
        esac
    done
    }

SUB_MENU() {
while :
do
clear
echo "
--------------------------------------------------
SUB MENU
--------------------------------------------------
[0] EXIT
[1] RETURN TO MAIN MENU
[2] START ADDING OPTIONS HERE.. TRY OUT OPTION 2
--------------------------------------------------
SELECT AN OPTION TO CONTINUE:"
read -r SUB_MENU
case "$SUB_MENU" in

"0") clear && exit 0;;
"1") MAIN_MENU;;
"2") echo "OPTION 2 CAN DO SOME COOL COMMANDS ETC.."
*)   INVALID_SELECTION;;
    esac
done
}

MAIN_MENU
