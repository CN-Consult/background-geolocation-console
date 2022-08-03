FROM node:16

LABEL maintainer="Jens Stahl <jens.stahl@cn-consult.eu>"\
    description="Background Geolocation Console"

RUN    apt-get update && \
    apt-get install git && \
    cd /srv && \
    git clone https://github.com/CN-Consult/background-geolocation-console.git && \
    cd /srv/background-geolocation-console && \
    npm install

WORKDIR /srv/background-geolocation-console

EXPOSE 9000/tcp

ENTRYPOINT npm start
