#!/bin/bash
[[ -d $HOME/.Cloner ]] || mkdir "$HOME/.Cloner"
currentdir="$PWD"
SAVEPATH="${1-$currentdir}"
list=$HOME/.pillager/list
echo -n "Enter Link to Clone : "

read -r LINK

echo "$LINK" >> "$list"
wget -r -np -nc -e robots=off -c --reject index.html,index.html* "${LINK}" -P "$SAVEPATH"

echo "Successfull"
    