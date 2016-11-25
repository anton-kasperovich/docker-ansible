Description
===========
Docker image for Ansible, based on Alpine v3.4

- Ansible v2.2.0.0
- Ansible Lint v3.4.4

Supported tags and respective `Dockerfile` links
===========
- [`0.1.0`, `0.1.0` (*0.1.0/Dockerfile*)](https://github.com/anton-kasperovich/docker-ansible/blob/0.1.0/Dockerfile)

Usage
===========
```
docker run --rm -it -v $(pwd):/ansible iniweb/ansible:0.1.0 ansible-playbook playbook.yml
```
