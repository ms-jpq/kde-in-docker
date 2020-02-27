FROM msjpq/kde-vnc:bionic

ARG VERSION="1.4.1"

RUN mkdir /_install


# Install
RUN apt update && \
    apt install -y firefox
VOLUME /root/Downloads


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Firefox


# Cleanup
RUN apt clean && \
    rm -r /_install
