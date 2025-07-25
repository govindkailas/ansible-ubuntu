FROM python:3.8-slim-buster

RUN apt-get update && \
    apt-get install -y sshpass git && \
    pip install ansible

WORKDIR /ansible
