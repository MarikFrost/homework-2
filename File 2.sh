#крипт копирующий файл 0 в файл test.txt

#!/bin/bash

firstdir=directory/0    #Файл 0 который находится в папке directory записываем в переменную firstdir
seconddir=directory/text.txt #Файл text.txt который находится в папке directory записываем в переменную seconddir

if [ -e $firstdir ]  #проверяем существует ли файл 0, если да то .....
then

    if [ -e $seconddir ] # проверяем существует ли файл text.txt если да, то ....
    then
        cp $firstdir $seconddir # копируем файл 0 в файл text.txt

        if [ -s $seconddir ]  # проверяем произошло ли копирование если да, то .....
        then
            code --wait $seconddir  # открываем файл в редакторе
        else
            echo "Копирование не удалось"
        fi

    else 
        echo "Файл $seconddir не найде"
    fi

else 
    echo "Файл $firstdir не найден"    
fi