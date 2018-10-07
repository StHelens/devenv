# docker build -t devenv .

FROM ubuntu:16.04
LABEL maintainer="garydavies@outlook.com"

RUN mkdir -p /tmp/setup && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        npm nodejs-legacy \
        build-essential \
        cmake \
        git \
        software-properties-common \
        wget \
        unzip && \
    apt-get update

RUN npm i -g n && \
    n 8.10

ADD . /home

WORKDIR /home

CMD [ "npm", "install", "--save", "next", "react", "react-dom" ]

CMD [ "npm", "run", "dev" ]
