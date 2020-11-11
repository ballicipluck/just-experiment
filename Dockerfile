FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get install -y software-properties-common
