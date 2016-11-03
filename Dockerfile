FROM debian:jessie

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y build-essential dh-make

ENV TERM=xterm
