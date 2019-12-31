#!/bin/bash

#  Network Monitor
#
#       
#               Author: Viki (a) Vignesh Natarajan
#               Firma : vikilabs.org
#

SERVER="google.com"
KEEPALIVE_INTERVAL=10

function main()
{
    while [ 1 ]; 
    do
        ping -c 1 $SERVER &> /dev/null
        if [ $? -ne 0 ]; then
            connection_failure_action
        else
            connection_success_action
        fi
        sleep $KEEPALIVE_INTERVAL
    done
}

function connection_success_action()
{
    echo "[ status ] connection successful"
}

function connection_failure_action()
{
    echo "[ error  ] connection failure"
}

main
