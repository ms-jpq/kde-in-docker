FROM alpine AS base
# Pull Deps
RUN mkdir /_install && \
    cd /_install && \
    apk add wget && \
    wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb



FROM msjpq/firefox-vnc


# Install
COPY --from=base /_install /_install
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y libxml2:i386 libstdc++6:i386 \
      /_install/AdbeRdr9.5.5-1_i386linux_enu.deb


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE="Adobe Acrobat"


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
