FROM msjpq/kde-vnc:bionic

ARG VERSION="1.4.1"

RUN mkdir /_install


# Install
ADD https://github.com/agalwood/Motrix/releases/download/v${VERSION}/Motrix_${VERSION}_amd64.deb /_install
RUN apt install -y /_install/Motrix_${VERSION}_amd64.deb
VOLUME /config/Downloads


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Motrix


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
