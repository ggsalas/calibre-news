#!/bin/bash

. $KINDLE_HOME_DIR/src/send-email.sh
. $KINDLE_HOME_DIR/src/send-ftp.sh

getRecipe() {
  if [ -d books ]; 
  then 
     echo "book folder exists"
  else
    mkdir $KINDLE_HOME_DIR/books
  fi

  for var in "$@"
  do
    ebook-convert $KINDLE_HOME_DIR/src/recipes/$var.recipe $KINDLE_HOME_DIR/books/$var.mobi --output-profile kindle
    sendFTP $KINDLE_HOME_DIR/books/$var.mobi $var
  done
}

testRecipe() {
  mkdir $KINDLE_HOME_DIR/books
  ebook-convert $KINDLE_HOME_DIR/src/recipes/$1.recipe $KINDLE_HOME_DIR/books/$1.mobi --output-profile kindle --test -vv --debug-pipeline $KINDLE_HOME_DIR/debug
}

testEmail() {
  for var in "$@"
  do
    sendEmail $KINDLE_HOME_DIR/books/$var.mobi $var
  done
}

testFTP() {
  for var in "$@"
  do
    sendFTP $KINDLE_HOME_DIR/books/$var.mobi $var
  done
}
