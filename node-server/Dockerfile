FROM node:latest

MAINTAINER Luis Loaiza <luis@shippify.co>

RUN apt-get update

#INSTALL supervisord
RUN apt-get install --no-install-recommends -y wget nano curl supervisor make g++ bzip2 python-software-properties

# Config supervisor
RUN mkdir -p /var/log/supervisor

EXPOSE 9001

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
