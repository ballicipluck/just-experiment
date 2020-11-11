FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get install -y software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    git \
    snapd

RUN snap install docker

RUN git clone https://github.com/gautamajay52/TorrentLeech-Gdrive torrentleech-gdrive

RUN cd torrentleech-gdrive
RUN docker build . -t torrentleech-gdrive
RUN docker run torrentleech-gdrive
#RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
#    && sudo apt-get update && sudo apt-get install -y docker-ce
    
#RUN
