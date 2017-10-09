# ----------------------------------
# Pterodactyl Node Dockerfile
# Environment: Node
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        node:8.6.0-alpine

MAINTAINER  Dizzy, <itsdizzy40@gmail.com>

RUN         apk update \
            && apk upgrade \
            && adduser -D -h /home/container container

USER        container
ENV         HOME=/home/container USER=container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]