FROM alpine:3.4

MAINTAINER Anton Kasperovich <anton.kaspiarovich@gmail.com>

ENV ANSIBLE_VERSION 2.2.0.0
ENV ANSIBLE_LINT_VERSION 3.4.4

RUN apk --update add sudo \
    git \
    python \
    py-pip \
    openssl \
    openssh \
    ca-certificates

RUN addgroup ansible \
    && adduser -s /bin/sh -D -G ansible ansible

RUN apk --update add --virtual build-dependencies \
    build-base \
    wget \
    python-dev \
    libffi-dev \
    openssl-dev \
    && pip install -U ansible==$ANSIBLE_VERSION \
    && pip install -U ansible-lint==$ANSIBLE_LINT_VERSION \
    && apk del build-dependencies

RUN mkdir -p /etc/ansible \
    && echo 'localhost' > /etc/ansible/hosts \
    && mkdir /ansible \
    && chown -R ansible:ansible /etc/ansible /ansible

USER ansible
VOLUME /ansible
WORKDIR /ansible

CMD [ "ansible-playbook", "--help" ]
