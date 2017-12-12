# dev environment w/ sudo dev user
FROM buildpack-deps:stretch

ENV DEV_USER dev
ENV DEV_PASSWORD dev

RUN apt-get update
RUN apt-get install sudo -y
RUN useradd $DEV_USER

RUN usermod -aG sudo $DEV_USER
RUN echo '$DEV_PASSWORD\n$DEV_PASSWORD' | passwd $DEV_USER
