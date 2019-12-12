FROM ubuntu:bionic
MAINTAINER Melekhin Konstantin <km@smartdive.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    wget sudo udev apt-utils \
    cmake openjdk-8-jdk \
    libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev libopencv-imgcodecs-dev libopencv-dev \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://www.ximea.com/downloads/recent/XIMEA_Linux_SP.tgz \
 && tar xzf XIMEA_Linux_SP.tgz \
 && cd package \
 && sudo ./install -x64 -noudev -silent \
 && cd .. \
 && rm -rf package XIMEA_Linux_SP.tgz
