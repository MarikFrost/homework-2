#!/bin/bash
file=directory/text.txt 
renamefile=directory/text2.txt
if [ -e $file ]
then 
    mv $file $renamefile
    if [ -e $renamefile ]
    then
        echo "Файл $file переименован в $renamefile"
    fi
else
    echo "Файл $file не найден"
fi
