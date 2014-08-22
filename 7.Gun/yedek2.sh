#!/bin/bash
zaman=$(date +%Y_%m_%d_%H_%M)
#echo $zaman

if [ -n "$1" -a -f "$1" ]
	then
		tar -czf ./$1"_"$zaman.tar.gz $1
		#echo yapıldı
	else
		echo Kullanım: $0 dosya adı parametresi ile çalışır
fi
