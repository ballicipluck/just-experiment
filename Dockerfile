FROM lzzy12/mega-sdk-python:latest

RUN apt-get -qq update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    apt-add-repository non-free && \
    apt-get -qq update && \
    apt-get -qq install -y p7zip-full p7zip-rar aria2 curl wget pv jq ffmpeg locales python3-lxml && \
    apt-get purge -y software-properties-common
