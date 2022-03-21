FROM alpine

RUN apk add --no-cache fio bc bash util-linux

CMD ln -s /usr/bin/fio /usr/local/bin/fio

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "bash" ]
