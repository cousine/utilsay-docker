FROM ubuntu:14.04
RUN apt-get update -qq && apt-get install -y \
  imagemagick\
  openjdk-6-jdk\
  coreutils\
  perl\
  git


RUN git clone https://github.com/maandree/util-say
RUN apt-get install -y make texinfo
RUN cd /util-say && make all
RUN mkdir /images
WORKDIR /images
ADD . /images
