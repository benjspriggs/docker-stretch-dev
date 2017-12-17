# dev environment w/ sudo dev user
FROM buildpack-deps:stretch

ENV DEV_USER dev
ENV DEV_PASSWORD dev
ENV SHELL /bin/bash

RUN apt-get update
RUN apt-get install sudo -y
RUN adduser --ingroup sudo --disabled-password --gecos "" $DEV_USER
RUN echo '$DEV_PASSWORD\n$DEV_PASSWORD' | passwd $DEV_USER
