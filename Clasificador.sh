#!/bin/bash

flag=0
if [ "$#" -eq 0 ]
then
	echo " "
	echo Lo siento, el programa solo sirve en modo comando, ingresa argumentos.
	echo " "
	exit 1
else
	for direc in $*
	do
		if test "`echo "$direc" | egrep '^(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[1-9])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
		then
			if test "`echo "$direc" | egrep '^127\.0\.0\.(1[0-9]{2}|2[0-4][0-9]|25[0-4]|[1-9][0-9]|[1-9])$'`" #Para autoreconocimiento
			then
				echo " "
				echo La IP "$direc" es VALIDA, es de autoreconocimiento y es publica Clase A
				echo " "
			elif test "`echo "$direc" | egrep '^10(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es privada Clase A
				echo " "
			elif test "`echo "$direc" | egrep '^(1[0-2][0-7]|[1-9][0-9]|[1-9])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es publica Clase A
				echo " "
			elif test "`echo "$direc" | egrep '^169(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`" #Autoasignada por error
			then
				echo " "
				echo La IP "$direc" es VALIDA, es autoasignada por error y es publica Clase B	
				echo " "
			elif test "`echo "$direc" | egrep '^172\.((1[6-9]|2[0-9]|3[0-1]))(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){2}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es privada Clase B
				echo " " 
			elif test "`echo "$direc" | egrep '^(12[8-9]|1[3-8][0-9]|19[0-1])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es publica Clase B
				echo " "
			elif test "`echo "$direc" | egrep '^192\.168(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){2}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es privada Clase C
				echo " "
			elif test "`echo "$direc" | egrep '^(19[2-9]|20[0-9]|21[0-9]|22[0-3])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es publica Clase C
				echo " "
			elif test "`echo "$direc" | egrep '^(22[4-9]|23[0-9])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es publica Clase D 
				echo " "
			elif test "`echo "$direc" | egrep '^(24[0-9]|25[0-5])(\.(1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9][0-9]|[0-9])){3}$'`"
			then
				echo " "
				echo La IP "$direc" es VALIDA y es publica Clase E
				echo " "
			flag=0
			fi		
		else
			echo " " 
			echo La IP "$direc" es INVALIDA 
			echo " "
			flag=1
		fi
	done
	if [ $flag -eq 0 ]
	then
		exit 0
	else
		exit 1
	fi
fi















