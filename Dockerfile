FROM alpine

RUN apk add --no-cache fio bc bash util-linux

CMD ln -s /usr/bin/fio /usr/local/bin/fio


VOLUME /datastore
WORKDIR /datastore

ENTRYPOINT [ "bash" ]
