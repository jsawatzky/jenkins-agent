FROM jenkins/agent:alpine

LABEL org.opencontainers.image.source https://github.com/jsawatzky/jenkins-agent

USER root

RUN apk add --update --no-cache gettext curl python3
RUN ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip && pip3 install --no-cache --upgrade pip setuptools

USER jenkins
