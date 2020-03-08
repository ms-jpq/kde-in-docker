FROM msjpq/kde-vnc:bionic

RUN mkdir /_install


# WINE Prereq
ADD https://dl.winehq.org/wine-builds/winehq.key /_install
RUN dpkg --add-architecture i386 && \
    add-apt-repository -y ppa:cybermax-dexter/sdl2-backport && \
    apt-key add /_install/winehq.key && \
    apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' && \
    apt update


# WINE HQ
RUN apt install -y winehq-devel

# Mono
RUN echo Mono

# Gecko
RUN echo gecko


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
