# FROM alpine:latest

# RUN apk add -u bash

# COPY Dockerfile /cnab/Dockerfile
# COPY app /cnab/app

# CMD ["/cnab/app/run"]


# FROM python:3.6.8-jessie
FROM docker:stable-git

RUN apk update && apk add -u bash curl wget docker-openrc openrc --no-cache

# # install awscli
# RUN pip3 install awscli

# kubectl installation
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# helm install
RUN curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.14.0-linux-amd64.tar.gz && \
    tar -xzvf helm-v2.14.0-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    mv linux-amd64/tiller /usr/local/bin/tiller

# RUN curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator && \
#     chmod +x ./aws-iam-authenticator && \
#     mv aws-iam-authenticator /usr/local/bin/aws-iam-authenticator

# install k3d
RUN curl -sSL https://raw.githubusercontent.com/zeerorg/k3s-in-docker/master/install-script.sh | bash -

COPY Dockerfile /cnab/Dockerfile
COPY app /cnab/app
# COPY charts cnab/app/charts

# RUN rc-update add docker boot
# RUN k3d create --name k3s-default

ENTRYPOINT ["/cnab/app/run"]
