FROM python:3.13-slim

# Metadata labels for description and details
LABEL org.opencontainers.image.title="Ansible Ubuntu Image"
LABEL org.opencontainers.image.description="A minimal Ubuntu-based Docker image with Python 3.13, Ansible, sshpass, and git installed. Suitable for running Ansible playbooks and automation tasks."
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.source="https://github.com/govindkailas/ansible-ubuntu"
LABEL org.opencontainers.image.licenses="MIT"

RUN apt-get update && \
    apt-get install -y sshpass git && \
    pip install ansible

WORKDIR /ansible
