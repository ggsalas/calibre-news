FROM linuxserver/calibre:6.5.0

RUN apt-get update && apt-get install -y --no-install-recommends -qq\
 curl neovim

COPY . /home

WORKDIR /home

# ENV PUID=0 
# ENV PGID=0
# ENV TZ=America/Argentina/Buenos_Aires

ENV KINDLE_HOME_DIR "/home"
ENV EMAIL_TO "$EMAIL_TO"
ENV EMAIL_FROM "$EMAIL_FROM"
ENV EMAIL_USERNAME "$EMAIL_USERNAME"
ENV EMAIL_PASSWORD "$EMAIL_PASSWORD"
ENV EMAIL_RELAY "$EMAIL_RELAY"
ENV EMAIL_ENCRYPTION_METHOD "$EMAIL_ENCRYPTION_METHOD"
ENV EMAIL_PORT "$EMAIL_PORT"
ENV FTP_USER "$FTP_USER"
ENV FTP_PASSWORD "$FTP_PASSWORD"

RUN echo "starting chmod of getDailyPublications..."
RUN chmod +x /home/getDailyPublications.sh
# RUN chmod +x /home/run.sh /home/entrypoint.sh /home/kindle.sh

# ENTRYPOINT ""
# ENTRYPOINT /home/entrypoint.sh
# CMD cron && tail -f /var/log/cron.log
# RUN cron -f
# CMD [ "crond", "-f"]
