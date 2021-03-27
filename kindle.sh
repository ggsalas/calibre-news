#!/bin/bash
export KINDLE_HOME_DIR="$PWD"
. $KINDLE_HOME_DIR/src/app.sh

getRecipe $@

