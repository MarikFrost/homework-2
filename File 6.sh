#!/bin/bash
dir=one
dir2=one/two



mkdir one
if [ -d $dir ]
then
    mkdir one/two

    if [ -d $dir2 ]
    then
        cp test{1..6}.txt one/two
        ls
    else
        echo "Не удалось создать папку $dir2"
    fi

else
    echo "Не удалось создать папку $dir"
fi