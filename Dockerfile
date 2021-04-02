FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends -qq\
  apt-transport-https \
  calibre \
  cron \
  vim

COPY . /home

WORKDIR /home

ENV KINDLE_HOME_DIR /home
ENV EMAIL_TO "$EMAIL_TO"
ENV EMAIL_FROM "$EMAIL_FROM"
ENV EMAIL_USERNAME "$EMAIL_USERNAME"
ENV EMAIL_PASSWORD "$EMAIL_PASSWORD"
ENV EMAIL_RELAY "$EMAIL_RELAY"
ENV EMAIL_ENCRYPTION_METHOD "$EMAIL_ENCRYPTION_METHOD"
ENV EMAIL_PORT "$EMAIL_PORT"

RUN chmod +x /home/run.sh /home/entrypoint.sh

ENTRYPOINT /home/entrypoint.sh
RUN service cron start
