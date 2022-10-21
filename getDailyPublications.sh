#!/bin/bash

  sh $KINDLE_HOME_DIR/kindle.sh lacapital lanacion perfil blogs

if [ $(date +%u) -eq 5 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Viernes ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil

# elif [ $(date +%u) -eq 7 ]; then
#   echo ">>>>>>>>>>>>>>>>>>>>> Get Sunday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
#   sh $KINDLE_HOME_DIR/kindle.sh lanacion clarin perfil

else
  # echo ">>>>>>>>>>>>>>>>>>>>> No News for today ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil blogs
fi
