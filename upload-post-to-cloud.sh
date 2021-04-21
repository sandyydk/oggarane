#!/bin/bash 

commitMessage=$1

commitMessageLength=${#commitMessage}

if [ $commitMessageLength -eq 0 ]
then
    echo "What have you updated now ? "
    read commitMessage
else
    # Clearing previously held values
    commitMessage=""
    for message in "$@"
    do
        echo "Message : $message"
       commitMessage="$commitMessage $message" 
       echo "Updated commit message: $commitMessage"
    done
fi

echo "Commit message is $commitMessage"

# Commit code to cloud
git add .

git commit -m "$commitMessage"

git push 
