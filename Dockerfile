FROM alpine:latest
WORKDIR /tmp

RUN apk add build-base
RUN wget https://downloads.sourceforge.net/project/xstress/xstress/0.375%20beta/xstress-src-0.375-beta-20090219.tar.gz
RUN tar -zxvf xstress-src-0.375-beta-20090219.tar.gz && \
    cd xstress && \
    make && \
    mkdir /opt/xstress && \
    cp bin/xstress /opt/xstress/ && \
    rm -rf *

WORKDIR /opt/xstress

COPY xstress.conf /opt/xstress/

CMD ["./xstress", "--logfile", "/dev/stdout"]