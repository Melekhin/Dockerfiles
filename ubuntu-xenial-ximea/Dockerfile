FROM ubuntu:xenial
MAINTAINER Melekhin Konstantin <km@smartdive.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get -qq dist-upgrade && apt-get install -qq -y \
    wget sudo curl \
    cmake openjdk-8-jdk \
    libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev libopencv-dev \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://www.ximea.com/downloads/recent/XIMEA_Linux_SP.tgz \
 && tar xzf XIMEA_Linux_SP.tgz \
 && cd package \
 && sudo ./install -x64 -noudev -silent \
 && cd .. \
 && rm -rf package XIMEA_Linux_SP.tgz \
 && apt-get -qq clean
