#!/bin/bash
#Writen by MA
#YOLO

#Flags and shit, son, bitch
OPT_A=Y

while getopts :Y:h FLAG; do
  case $FLAG in
    Y)  #Entras a la opcion "YOLO"
      OPT_A=$OPTARG
      echo  $OPT_A


      if echo $PATH | grep $OPT_A > /dev/null; then
            echo El directorio esta en PATH 
            echo YOLO
      else
            echo El directorio NO esta en PATH 
            echo NO YOLO 
      fi
    ;;


    \?) #El flag esta malo, jodete, bitch
      echo -e \n "Jodete -${BOLD}$OPTARG${NORM} no esta permitida."
     
      
       ;;
  esac
done


if [ "$1" = "" ] ; then 			#si no le paso flags hara ls a los directorios del YOLOPATH
	pa=$(echo $PATH | tr ":" "\n")
	for i in $pa; do
		echo $pa
		ls $pa
	done
fi

