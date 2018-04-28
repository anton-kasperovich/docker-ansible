Description
===========
Docker image for Ansible, based on Alpine v3.7

- Ansible v2.5.2
- Ansible Lint v3.4.21
- Ansible Review v0.13.4
- pyOpenSSL v17.5.0

Supported tags and respective `Dockerfile` links
===========
- [`0.1.0`, `0.1.0` (*0.1.0/Dockerfile*)](https://github.com/anton-kasperovich/docker-ansible/blob/0.1.0/Dockerfile)
- [`0.2.0`, `0.2.0` (*0.2.0/Dockerfile*)](https://github.com/anton-kasperovich/docker-ansible/blob/0.2.0/Dockerfile)
- [`0.3.0`, `0.3.0` (*0.3.0/Dockerfile*)](https://github.com/anton-kasperovich/docker-ansible/blob/0.3.0/Dockerfile)

Usage
===========
```
docker run --rm -it -v $(pwd):/ansible iniweb/ansible:0.3.0 ansible-playbook playbook.yml
```
