#! /bin/bash

echo -e "Dosyanın ismini giriniz:\c"

read dosyaismi

# https://linuxize.com/post/bash-check-if-file-exists/

if [ -e $dosyaismi  ]
then
   echo "$dosyaismi bulundu"
else
   echo "$dosyaismi bulunamadı"
fi
