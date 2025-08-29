#!/bin/bash



input="$1"
command=${input%% *}



if [[ -f "./commands/$command.sh" ]]; then
./commands/"$command.sh" "$input"

else
    echo ""$command is not a valid command.""
fi