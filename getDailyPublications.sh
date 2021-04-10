#!/bin/bash

# Saturday 
if [ $(date +%u) -eq 6 ]; then
  echo "............................. Today is $(date +%u) (saturday)"
  sh $KINDLE_HOME_DIR/kindle.sh perfil
else
  echo "............................. Today is $(date +%u) (NOT saturday)"
fi
