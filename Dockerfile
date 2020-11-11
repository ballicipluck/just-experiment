FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get install -y software-properties-common \
    python3-setuptools \
    python3-dev
    
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

RUN udo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && sudo apt-get update && sudo apt-get install -y docker-ce
    
RUN sudo dockerd
