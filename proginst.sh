#!/bin/bash

#YOLO dice si el programa YOLO esta instalado en la maquina YOLO
for i in {1..25}; do
	ssh root@$1$i.ac.labf.usb.ve dpkg -s $2
	
done
