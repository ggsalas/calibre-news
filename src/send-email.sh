#!/bin/bash

sendEmail() {
  if 
    calibre-smtp $EMAIL_FROM $EMAIL_TO NewsFile --attachment=$1 --relay=$EMAIL_RELAY --encryption-method=$EMAIL_ENCRYPTION_METHOD --port=$EMAIL_PORT --username=$EMAIL_USERNAME --password=$EMAIL_PASSWORD
  then
    echo "📫  $2 has been sent to Gabi Kindle"
  else
    echo "❗ $2 has fail"
  fi
}
