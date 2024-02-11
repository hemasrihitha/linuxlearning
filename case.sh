#!/bin/bash

# Prompt the user for input
echo "Enter a number between 1 and 3:"
read input

# Perform actions based on user input using a case statement
case $input in
    1)
        scp /home/cloud_user/1 cloud_user@f120574411474f3dbf996693ff893a102c.mylabserver.com:/home/cloud_user/i
        echo "Successfully Deployed to server 2"
        ;;

    2)
        scp /home/cloud_user/1 cloud_user@f120574411474f3dbf996693ff893a103c.mylabserver.com:/home/cloud_user/
        echo "Successfully Deployed to server 3"
        ;;
    3)
        echo "You entered three."
        ;;
    *)
        echo "Invalid input. Please enter a number between 1 and 3."
        ;;
esac
