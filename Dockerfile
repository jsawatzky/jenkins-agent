FROM jenkins/agent:alpine

USER root

RUN apk add --update --no-cache gettext

USER jenkins
