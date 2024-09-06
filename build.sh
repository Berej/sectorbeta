#!/bin/bash

# Создаем папку build, если она еще не существует
mkdir -p build

# Компилируем main.c в исполняемый файл внутри папки build с включенной отладочной информацией (-g)
gcc -g -o build/sectorbeta src/main.c -lraylib -lm -lpthread -ldl -lX11

# Проверяем, успешно ли прошла компиляция
if [ $? -eq 0 ]; then
    echo "Compilation complete"
    ./build/sectorbeta
else
    echo "Error while compilation"
fi