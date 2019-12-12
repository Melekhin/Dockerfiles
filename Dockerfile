FROM ubuntu:bionic
MAINTAINER Melekhin Konstantin <km@smartdive.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y \
    wget sudo udev apt-utils \
    cmake openjdk-8-jdk \
    libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev libopencv-imgcodecs-dev libopencv-dev
