# docker-compose up --build .

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

WORKDIR /home/prod

RUN npm install

CMD ["/bin/bash"]
