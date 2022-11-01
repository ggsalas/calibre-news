#!/bin/bash

# if [ $(date +%u) -eq 5 ]; then
#   echo ">>>>>>>>>>>>>>>>>>>>> Get Viernes ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
#   sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil blogs
#
# # elif [ $(date +%u) -eq 7 ]; then
# #   echo ">>>>>>>>>>>>>>>>>>>>> Get Sunday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
# #   sh $KINDLE_HOME_DIR/kindle.sh lanacion clarin perfil
#
# else
#   echo ">>>>>>>>>>>>>>>>>>>>> Get daily News ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
#   sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital lanacion perfil
# fi

sh $KINDLE_HOME_DIR/kindle.sh lacapital

