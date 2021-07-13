#!/bin/bash

for f in *\ *
do
  if [[ ! -f "$f" ]]; then
    continue
  else
    mv -i "$f" "${f// /_}"
  fi
done








#for NAME in *
#do
#  if [[ ! -f $NAME ]]; then
#  continue
#  else
#  for (( i=0; i<${#NAME}; i++ ))       #${#NAME} - return the lenth of NAME
#  do

#    if [[ ${NAME:$i:1} == " " ]]; then     
#    echo $i
#    fi
#    echo "${NAME:$i:1}"                #return N characters from i onwards
#  done
#  fi
#done
