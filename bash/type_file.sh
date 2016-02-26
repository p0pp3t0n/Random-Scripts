#!/bin/bash
#
#
if [ ! -e "$1" ]
then
    echo "Usage : $0 <Nom de fichier> "
    exit 1
fi

if [ -L "$1" ]
then
    readlink "$1"
fi

