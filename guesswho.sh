#!/bin/bash
#Written by MA
#Busca paquetes instalados en la maquina que sigan un patron dado

aptitude search ~i $1 --disable-columns -F %p
