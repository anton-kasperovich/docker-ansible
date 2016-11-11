FROM alpine:3.4

MAINTAINER Anton Kasperovich <iniwebaka@gmail.com>

ENV ANSIBLE_VERSION 2.2.0.0

RUN apk --update add sudo \
    python \
    py-pip \
    openssl \
    ca-certificates

RUN apk --update add --virtual build-dependencies \
    build-base \
    wget \
    python-dev \
    libffi-dev \
    openssl-dev \
    && pip install -U ansible==$ANSIBLE_VERSION \
    && apk del build-dependencies

RUN mkdir -p /etc/ansible \
    && echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--help" ]
