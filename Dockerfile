FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends -qq\
  apt-transport-https \
  calibre

COPY . home/ 

WORKDIR /home/
