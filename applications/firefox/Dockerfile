FROM msjpq/kde-vnc:bionic

ARG VERSION="1.4.1"

RUN mkdir /_install


# Install
RUN apt install -y firefox
VOLUME /root/Downloads


# All Dependencies Satisfied
COPY root /


# Cleanup
RUN rm -r /_install
