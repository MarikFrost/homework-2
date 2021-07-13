#Скрипт переименовывающий файл test.txt в test2.txt

#!/bin/bash
file=directory/text.txt  #test.txt в папке directory присваиваем переменной file
renamefile=directory/text2.txt  #test2.txt в папке directory присваиваем переменной renamefile
if [ -e $file ] #проверяем наличие файла test.txt
then 
    mv $file $renamefile  #переименовуем файл
    if [ -e $renamefile ] # проверяем переименовался ли файл
    then
        echo "Файл $file переименован в $renamefile"
    fi
else
    echo "Файл $file не найден"
fi
