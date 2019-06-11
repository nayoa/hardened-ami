# AWS Hardened AMI

This repository builds an AMI that uses the [DevSec Hardening Framework](https://dev-sec.io/) [SSH](https://github.com/dev-sec/ansible-ssh-hardening) and [OS](https://github.com/dev-sec/ansible-os-hardening) hardening ansible roles. The roles provide numerous security-related configurations that follow the industries security best practices.

## Why

We want to ensure all instances and AMI's have a secure configuration and reduce the likelihood of attacks. The DevSec community keeps the playbooks up to do date with the DevSec Linux Security Baseline which gives us the extra security we need.

## Source code structure

```bash
├── ansible
│   ├── playbook.yaml                       <-- Ansible playbook file
│   ├── requirements.yaml                   <-- Ansible Galaxy requirements containing additional Roles to be used (DevSec)
├── scripts
│   └── install_ansible.sh                  <-- Updates packages and installs ansible on the OS
├── .gitlab-ci.yml                          <-- Gitlab CI pipeline
├── packer.json                             <-- Packer template to build AMI
```

## Built with
* [Packer](https://www.packer.io/)
* [Ansible](https://www.ansible.com/)
* Shell