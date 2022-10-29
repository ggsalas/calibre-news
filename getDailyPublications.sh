#!/bin/bash

if [ $(date +%u) -eq 6 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Saturday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil blogs

else
  echo ">>>>>>>>>>>>>>>>>>>>> Get today ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil
fi
