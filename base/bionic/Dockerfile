FROM ubuntu:bionic

## S6 Overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-amd64.tar.gz /tmp
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


# All Dependencies Satisfied
COPY root /


# Locale
RUN apt install -y locales && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8


## CLI
RUN apt install -y \
    python3 python3-pip


## Applications
RUN apt install -y \
    nautilus firefox konsole


# RUN mkdir /tmp/install && \
#     cd /tmp/install && \
#     git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-ubuntu.git && \
#     git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-containers-for-ubuntu.git


# RUN cd /tmp/install/deepin-wine-ubuntu && \
#     dpkg --add-architecture i386 && \
#     apt update && \
#     dpkg -i *.deb || \
#     apt install -f -y

# RUN cd /tmp/install/deepin-wine-containers-for-ubuntu && \
#     dpkg -i *.deb || \
#     apt install -f -y
# RUN rm /var/lib/dpkg/statoverride && \
#     touch /var/lib/dpkg/statoverride
# RUN sed -i 's/WINE_CMD="deepin-wine"/WINE_CMD="LC_ALL=zh_CN.UTF-8 deepin-wine"/' /opt/deepinwine/tools/run.sh


WORKDIR /root
# https://github.com/jriddell/kdeneon-docker/issues/1
# Faulty bluetooth thingy
RUN rm /usr/share/dbus-1/services/org.bluez.obex.service
