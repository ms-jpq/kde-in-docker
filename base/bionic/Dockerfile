FROM ubuntu:bionic

ARG S6_VER="1.22.1.0"
ARG NO_VNC_VER="1.1.0"
ARG WEB_SOCK_VER="0.9.0"

RUN mkdir /_install

## S6 Overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_VER}/s6-overlay-amd64.tar.gz /_install
RUN gunzip -c /_install/s6-overlay-amd64.tar.gz | tar -xf - -C / && \
    mkdir -p /app /notebooks
ENTRYPOINT ["/init"]


## KDE
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y plasma-desktop


## NAUTILUS
run apt install -y nautilus && \
    mkdir /root/Desktop && \
    cat /usr/share/applications/nautilus.desktop > /root/Desktop/nautilus.desktop


# VNC
RUN apt install -y xvfb x11vnc
ENV DISPLAY=:0 \
    SCR_WIDTH=1600 \
    SCR_HEIGHT=900
EXPOSE 5900


# NOVNC
ADD https://github.com/novnc/noVNC/archive/v${NO_VNC_VER}.zip /_install
ADD https://github.com/novnc/websockify/archive/v${WEB_SOCK_VER}.zip /_install
RUN cd /_install && \
    apt install -y unzip python nginx && \
    unzip v${NO_VNC_VER}.zip && \
    unzip v${WEB_SOCK_VER}.zip && \
    mv noVNC-${NO_VNC_VER} /novnc && \
    mv websockify-${WEB_SOCK_VER} /novnc/utils/websockify && \
    rm -r /etc/nginx
EXPOSE 8080


# All Dependencies Satisfied
COPY root /
WORKDIR /


RUN rm -r /_install
# https://github.com/jriddell/kdeneon-docker/issues/1
# Faulty bluetooth thingy
RUN rm /usr/share/dbus-1/services/org.bluez.obex.service
