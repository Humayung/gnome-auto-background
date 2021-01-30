#!/bin/bash
while true
do
    wget -O "background_buffer.jpg" "https://source.unsplash.com/1366x768"
    FILESIZE=$(stat -c%s "background_buffer.jpg")
    MIN=10

    if [ $FILESIZE -gt $MIN ]
    then
        cp -fr "background_buffer.jpg" "background.jpg" 
        FILENAME="background.jpg"
        PWD=$(pwd)/$FILENAME
        gsettings set org.gnome.desktop.background picture-uri $PWD
    fi  
    sleep 1000
done

