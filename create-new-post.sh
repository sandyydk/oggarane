#!/bin/bash 

postname=$1

lengthOfPostname=${#postname}

if [ $lengthOfPostname -eq 0 ]
then
    echo "Enter the name of your new blog post: "
    read postname
fi

echo "Post name is $postname"

hugo new blog/$postname.md