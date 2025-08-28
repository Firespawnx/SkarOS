#!/bin/bash

# function definitions 
    #tests
        #function system() {
        #    if [ "$1" = "loading_animation" ]; then
        #        while [ "$loading" = "1" ]; do
        #            echo "│"
        #            sleep 0.07
        #            clear
        #
        #            echo "/"
        #            sleep 0.07
        #            clear
        #
        #            echo "─"
        #            sleep 0.07
        #            clear
        #
        #            echo "\\"
        #            sleep 0.07
        #            clear
        #        done
        #    fi
        #}
        #loading="0"
            # Call the function
        #system "loading_animation"



    #Clears the terminal and displays the home badge
    function home {
        clear
        reset



        echo " ┌────────────────────────────────────┐ "
        echo " │  ____  _               ___  ____   │ "
        echo " │ / ___|| | ____ _ _ __ / _ \/ ___|  │ "
        echo " │ \___ \| |/ / _' | '__| | | \___ \  │ "
        echo " │  ___) |   < (_| | |  | |_| |___) | │ "
        echo " │ |____/|_|\_\__,_|_|   \___/|____/  │ "
        echo " │                                    │ "
        echo " │                             ┌──────┤ "
        echo " │                             │ BETA │ "
        echo " │                ┌────────────┴──────┤ "
        echo " │                │ By Skandar ###### │ "
        echo " └────────────────┴───────────────────┘ "
    }
    # Define the evaluate function first
    evaluate() {
        local input="$1"

        if [ "$input" = "clear" ]; then
            home
        fi
}




# REPL loop
home
while true; do
    echo -n "SkarOS> "
    read user_input
    echo "You entered: $user_input"

    evaluate "$user_input"
done