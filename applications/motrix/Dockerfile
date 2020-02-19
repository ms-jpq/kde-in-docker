FROM msjpq/kde-vnc:bionic

ARG VERSION="1.4.1"


# Install
ADD https://github.com/agalwood/Motrix/releases/download/v${VERSION}/Motrix_${VERSION}_amd64.deb /_install
RUN dpkg -i /_install/Motrix_${VERSION}_amd64.deb || \
    apt install -fy && \
    mkdir -p /root/Desktop && \
    cat /usr/share/applications/motrix.desktop > /root/Desktop/motrix.desktop
VOLUME /root/Downloads


# Cleanup
RUN rm -r /_install
