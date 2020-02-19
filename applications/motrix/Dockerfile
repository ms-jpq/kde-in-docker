FROM msjpq/kde-vnc:bionic

ARG VERSION="1.4.1"

RUN mkdir /_install


# Install
ADD https://github.com/agalwood/Motrix/releases/download/v${VERSION}/Motrix_${VERSION}_amd64.deb /_install
RUN dpkg -i /_install/Motrix_${VERSION}_amd64.deb || \
    apt install -fy
VOLUME /root/Downloads


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Motrix


# Cleanup
RUN rm -r /_install
