#!/bin/bash
#Written by MA
#Cambia el idioma temporalmente de los tty de una maquina
#Se deben pasar ajuro los siguientes flags:  {y}, y {d o i}
#flag de dominio:d	(si se va a usar dominio)
#flag de ip:i		(si se va a usar ip)

OPT_E=d
OPT_F=i
OPT_G=y



while getopts :d:i:y FLAG; do
  case $FLAG in
    d)  #Entras a la opcion "d"

      echo $3
      

      echo  $4

    if [ $4 != "" ]; then 
      for i in { $4..$5 }; do
        ssh root@$2$i.ac.labf.usb.ve loadkeys $5
      done
    else
      for i in { 1..25 }; do
        ssh root@$2$i.ac.labf.usb.ve loadkeys $5
      done
      
    fi
      

    ;;

    i) #flag de ip
        if [ $2 = "a"]; then 
          if  [ $4 = "" ]; then 
            for i in { 2..26 }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          elif [ $4 != "" ]; then 
            $a=$4+2
            $b=$5+2
            for i in { $a..$b }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          fi
        elif [ $2 = "e"]; then 
          if  [ $4 = "" ]; then 
            for i in { 2..26 }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          elif [ $4 != "" ]; then 
            $a=$4+27
            $b=$5+51
            for i in { $a..$b }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          fi
        elif [ $2 = "f"]; then 
          if  [ $4 = "" ]; then 
            for i in { 2..26 }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          elif [ $4 != "" ]; then 
            $a=$4+56
            $b=$5+76
            for i in { $a..$b }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          fi
        elif [ $2 = "et"]; then 
          if  [ $4 = "" ]; then 
            for i in { 2..26 }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          elif [ $4 != "" ]; then 
            $a=$4+77
            $b=$5+101
            for i in { $a..$b }; do
              ssh root@159.90.9.$i loadkeys $5
            done
          fi
        fi

    y)  #Usando el rango
        echo Haciendo cosas en el rango.

    \?) #El flag esta malo, jodete, bitch
      echo -e \n "Jodete, -${BOLD}$OPTARG${NORM} no esta permitida."
     
      
       ;;
  esac
done
