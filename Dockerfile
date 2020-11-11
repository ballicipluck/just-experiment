FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get install -y -q software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    git \
    snapd \
    fakeroot
    
 ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8

RUN sudo snap install docker

RUN git clone https://github.com/gautamajay52/TorrentLeech-Gdrive torrentleech-gdrive

RUN cd torrentleech-gdrive
RUN sudo docker build . -t torrentleech-gdrive
RUN sudo docker run torrentleech-gdrive
#RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
#    && sudo apt-get update && sudo apt-get install -y docker-ce
    
#RUN
