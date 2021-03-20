#!/bin/bash

getRecipe() {
  mkdir $KINDLE_HOME_DIR/books

  for var in "$@"
  do
    ebook-convert $KINDLE_HOME_DIR/src/recipes/$var.recipe $KINDLE_HOME_DIR/books/$var.mobi --output-profile kindle
    sendEmail $KINDLE_HOME_DIR/books/$var.mobi $var
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
