FROM node:10

RUN apt-get update

RUN apt-get install --no-install-recommends -y python3 python3-pip python3-dev

RUN pip3 install awscli

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /app

WORKDIR /app
