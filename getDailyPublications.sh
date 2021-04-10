#!/bin/bash

if [ $(date +%u) -eq 6 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Saturday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh lacapital js politica world

if [ $(date +%u) -eq 7 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Sunday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh perfil lacapital clarin

else
  echo ">>>>>>>>>>>>>>>>>>>>> No News for today ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
fi
