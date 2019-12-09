FROM ubuntu:bionic
MAINTAINER Melekhin Konstantin <km@smartdive.com>
RUN mkdir -p /etc/udev/rules.d
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget sudo udev cmake apt-utils
RUN apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get install -y libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev libopencv-imgcodecs-dev
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y tzdata
RUN apt-get install -y tzdata
RUN apt-get install -y libopencv-dev