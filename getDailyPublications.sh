#!/bin/bash

if [ $(date +%u) -eq 6 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Saturday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh lacapital perfil blogs

elif [ $(date +%u) -eq 7 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Sunday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh perfil clarin 

else
  echo ">>>>>>>>>>>>>>>>>>>>> No News for today ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
fi
