FROM python:3.7-slim-buster

RUN apt-get update && \
    apt-get install -y sshpass && \
    pip install ansible

WORKDIR /ansible
