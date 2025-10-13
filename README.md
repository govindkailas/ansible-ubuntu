[![Docker](https://github.com/govindkailas/ansible-ubuntu/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/govindkailas/ansible-ubuntu/actions/workflows/docker-publish.yml)
[![Scan Container Image with Trivy](https://github.com/govindkailas/ansible-ubuntu/actions/workflows/container-image-scan.yml/badge.svg)](https://github.com/govindkailas/ansible-ubuntu/actions/workflows/container-image-scan.yml)

# ansible-ubuntu

A minimal Ubuntu-based Docker image with Python 3.13, Ansible, sshpass, and git installed. Suitable for running Ansible playbooks and automation tasks.

## Security

The container image is regularly scanned for vulnerabilities using [Trivy](https://github.com/aquasecurity/trivy). The scan results are available in the [Trivy scan workflow](https://github.com/govindkailas/ansible-ubuntu/actions/workflows/container-image-scan.yml).

## Usage with GitLab CI

You can use this image in your GitLab CI/CD pipelines to run Ansible playbooks. Here's an example `.gitlab-ci.yml` configuration:

```yaml
stages:
  - deploy

ansible_deploy:
  stage: deploy
  image: ghcr.io/govindkailas/ansible-ubuntu:main
  script:
    - ansible --version
    - ansible-playbook -i inventory/hosts playbook.yml
  only:
    - main
```

The image comes with Ansible, Python 3.13, sshpass, and git pre-installed, making it ready for most automation tasks.
