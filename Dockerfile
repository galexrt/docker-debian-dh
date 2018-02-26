FROM debian:jessie

LABEL maintainer="Alexander Trost <galexrt@googlemail.com>"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y build-essential dh-make && \
    mkdir /workspace

RUN apt-get -q clean all && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TERM=xterm

WORKDIR "/workspace"

VOLUME ["/workspace"]
