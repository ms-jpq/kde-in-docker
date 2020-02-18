FROM ubuntu:bionic

ARG S6_VER="1.22.1.0"
ARG NO_VNC_VER="1.1.0"
ARG WEB_SOCK_VER="0.9.0"


## S6 Overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_VER}/s6-overlay-amd64.tar.gz /tmp
RUN gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C / && \
    mkdir -p /app /notebooks
ENTRYPOINT ["/init"]


## KDE
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:kubuntu-ppa/backports && \
    apt update && \
    apt install -y plasma-desktop


# VNC
RUN apt install -y xvfb x11vnc
ENV DISPLAY=:0 \
    SCR_WIDTH=1600 \
    SCR_HEIGHT=900
EXPOSE 5900


# NOVNC
ADD https://github.com/novnc/noVNC/archive/v${NO_VNC_VER}.zip /tmp
ADD https://github.com/novnc/websockify/archive/v${WEB_SOCK_VER}.zip /tmp
RUN cd /tmp && \
    apt install -y unzip python nginx && \
    unzip v${NO_VNC_VER}.zip && \
    unzip v${WEB_SOCK_VER}.zip && \
    mv noVNC-${NO_VNC_VER} /novnc && \
    mv websockify-${WEB_SOCK_VER} /novnc/utils/websockify && \
    rm -r /etc/nginx
EXPOSE 8080


# All Dependencies Satisfied
COPY root /


# Locale
RUN apt install -y locales && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8


## Applications
RUN apt install -y \
    nautilus firefox konsole


WORKDIR /
# https://github.com/jriddell/kdeneon-docker/issues/1
# Faulty bluetooth thingy
RUN rm /usr/share/dbus-1/services/org.bluez.obex.service
