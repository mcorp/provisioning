FROM alpine:latest

RUN apk add --no-cache py-paramiko ansible ca-certificates py2-pip
RUN ansible-galaxy install geerlingguy.ruby
RUN pip install paramiko

RUN mkdir -p /playbooks

WORKDIR /playbooks
COPY . /playbooks

ENV ANSIBLE_HOST_KEY_CHECKING=False

CMD ["/bin/sh"]
