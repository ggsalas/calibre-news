#!/bin/bash

# Saturday 
if [[ $(date +%u) -eq 6 ]]; then
  echo "............................. Today is saturday"
  sh $KINDLE_HOME_DIR/kindle.sh perfil
else
  echo "............................. Today is NOT  saturday"
fi
