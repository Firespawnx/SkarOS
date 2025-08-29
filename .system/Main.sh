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
        echo "  NOTE: the evaluator is run every time you enter a command, so any changes to the evaluator will be reflected immediately. "
    }
    # Define the evaluate function first
    evaluate() {
        ./evaluator.sh "$1"
}




# REPL loop
home
while true; do
    printf "SkarOS> "
    read user_input
    printf "\033[1A\033[2K" # Delete "SkarOS> " line



    evaluate "$user_input"
done