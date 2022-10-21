#!/bin/bash

sendFTP() {
  if 
    curl -T $1 ftp://ftp.byethost31.com/htdocs/$2.mobi --user $FTP_USER:$FTP_PASSWORD
  then
    echo "  $2 has been sent to ElNoticioso"
  else
    echo "❗ $1 $2 has fail"
  fi
}
