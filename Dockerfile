FROM certbot/certbot
MAINTAINER Martin Venuš <martin.venus@gmail.com>

RUN apk add --update coreutils bash && rm -rf /var/cache/apk/*

ADD start.sh /bin/start.sh

ENTRYPOINT [ "/bin/start.sh" ]
