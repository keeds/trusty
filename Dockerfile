FROM ubuntu:12.04

RUN apt-get update
RUN apt-get -y install curl openjdk-7-jre-headless git-core

ENV LEIN_ROOT 1
RUN curl -s https://raw.github.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein
RUN chmod 0755 /usr/local/bin/lein
RUN lein version
