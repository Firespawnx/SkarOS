#!/bin/bash

params=${1#* }
            name=${params%% *}
            value=${params#* }
        echo "set $name to $value"
        $$name = "$value"