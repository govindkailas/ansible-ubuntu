FROM python:3.13-slim

RUN apt-get update && \
    apt-get install -y sshpass git && \
    pip install ansible

WORKDIR /ansible
