FROM alpine AS base
# Pull Deps
RUN mkdir /_install && \
    cd /_install && \
    apk add git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-ubuntu.git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-containers-for-ubuntu.git



FROM msjpq/wine-vnc:bionic

# Pull Deps
COPY --from=base /_install /_install


# Install Deps
RUN cd /_install/deepin-wine-ubuntu && \
    dpkg --add-architecture i386 && \
    apt update && \
    dpkg -i *.deb || \
    apt install -fy


# Install Apps
RUN cd /_install/deepin-wine-containers-for-ubuntu && \
    dpkg -i *.deb || \
    apt install -fy


# Set up Lang
RUN apt install -y locales && \
    locale-gen zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    PAGE_TITLE=深度


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
