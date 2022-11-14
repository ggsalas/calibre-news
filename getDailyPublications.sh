#!/bin/bash

if [ $(date +%u) -eq 5 ]; then
  echo ">>>>>>>>>>>>>>>>>>>>> Get Viernes ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh blogs natgeo_es clarin lacapital perfil pagina12 wsj wpost elpais_es elpais_uy

# elif [ $(date +%u) -eq 7 ]; then
#   echo ">>>>>>>>>>>>>>>>>>>>> Get Sunday ($(date +%u)) News <<<<<<<<<<<<<<<<<<<<<"
#   sh $KINDLE_HOME_DIR/kindle.sh lanacion clarin perfil

else
  echo ">>>>>>>>>>>>>>>>>>>>> Get daily News ($(date +%u)) <<<<<<<<<<<<<<<<<<<<<"
  sh $KINDLE_HOME_DIR/kindle.sh clarin lacapital perfil pagina12 wsj wpost elpais_es elpais_uy
fi
