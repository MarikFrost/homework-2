#!/bin/bash

firstdir=directory/0
seconddir=directory/text.txt

if [ -e $firstdir ]
then

    if [ -e $seconddir ]
    then
        cp $firstdir $seconddir

        if [ -s $seconddir ]
        then
            code --wait $seconddir
        else
            echo "Копирование не удалось"
        fi

    else 
        echo "Файл $seconddir не найде"
    fi

else 
    echo "Файл $firstdir не найден"    
fi