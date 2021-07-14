#скрипт меняющий права доступа к файлу one/two/test6.txt : только на выполнение пользователем

#!/bin/bash
touch one.txt two.txt test6.txt #создаем файлы
chmod 111 one.txt two.txt test6.txt  # ставим права доступа только на виполнение для пользователей
ls -l one.txt two.txt test6.txt # просматриваем права доступа
