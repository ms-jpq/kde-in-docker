FROM ubuntu:focal

ARG S6_VER="1.22.1.0"
ARG NO_VNC_VER="1.1.0"
ARG WEB_SOCK_VER="0.9.0"

RUN mkdir /_install

## S6 Overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_VER}/s6-overlay-amd64.tar.gz /_install
RUN tar xzf /_install/s6-overlay-amd64.tar.gz -C / --exclude="./bin" && \
    tar xzf /_install/s6-overlay-amd64.tar.gz -C /usr ./bin
ENTRYPOINT ["/init"]


## KDE
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y plasma-desktop
# https://github.com/mviereck/x11docker/issues/183
RUN apt install -y dbus-x11


## Other Applications
run apt install -y dolphin konsole


## VNC
RUN apt install -y tigervnc-standalone-server tigervnc-xorg-extension
ENV DISPLAY=:0 \
    SCR_WIDTH=1600 \
    SCR_HEIGHT=900
EXPOSE 5900


## NOVNC
ADD https://github.com/novnc/noVNC/archive/v${NO_VNC_VER}.zip /_install
ADD https://github.com/novnc/websockify/archive/v${WEB_SOCK_VER}.zip /_install
RUN cd /_install && \
    apt install -y unzip python2 nginx gettext-base && \
    unzip v${NO_VNC_VER}.zip && \
    unzip v${WEB_SOCK_VER}.zip && \
    mv noVNC-${NO_VNC_VER} /novnc && \
    mv websockify-${WEB_SOCK_VER} /novnc/utils/websockify && \
    ln -s /usr/bin/python2 /usr/bin/python
EXPOSE 8080
EXPOSE 8888
ENV PATH_PREFIX=/ \
    VNC_RESIZE=scale \
    RECON_DELAY=250 \
    PAGE_TITLE=KDE


## Setup Root User
ENV ROOT_PASSWORD=password
RUN echo "root:$ROOT_PASSWORD" | chpasswd
WORKDIR /root
VOLUME /root


## All Dependencies Satisfied
COPY _root /
COPY focal/root /


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
