#!/bin/bash
[[ -d $HOME/.Cloner ]] || mkdir "$HOME/.Cloner"
currentdir="$PWD"
SAVEPATH="${1-$currentdir}"
list=$HOME/.pillager/list
echo -n "Enter Link to Clone : "

read -r LINK

echo "$LINK" >> "$list"
wget -mk "${LINK}" -P "$SAVEPATH"

echo "Successfull"
    
