FROM jenkins/agent:alpine

LABEL org.opencontainers.image.source https://github.com/jsawatzky/jenkins-agent

USER root

RUN apk add --update --no-cache gettext

USER jenkins
