#!/bin/bash

sendFTP() {
  if 
    curl -T $1 ftp://$FTP_DOMAIN$FTP_FOLDER/$2.mobi --user $FTP_USER:$FTP_PASSWORD --ftp-skip-pasv-ip
  then
    echo "  $2 has been sent to ElNoticioso"
  else
    echo "❗ $1 $2 has fail"
  fi
}
