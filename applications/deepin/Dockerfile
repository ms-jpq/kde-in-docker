FROM msjpq/kde-vnc:bionic

RUN mkdir /_install

# # Install Deepin Deps
# # https://github.com/zq1997/deepin-wine
# RUN apt install -y curl && \
#     curl https://deepin-wine.i-m.dev/setup.sh | sh


# Pull Deps
RUN cd /_install && \
    apt install -y git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-ubuntu.git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-containers-for-ubuntu.git

# Install Deps
RUN cd /_install/deepin-wine-ubuntu && \
    dpkg --add-architecture i386 && \
    apt update && \
    dpkg -i *.deb || \
    apt install -f -y

# Install Apps
RUN cd /_install/deepin-wine-containers-for-ubuntu && \
    dpkg -i *.deb || \
    apt install -f -y
RUN rm /var/lib/dpkg/statoverride && \
    touch /var/lib/dpkg/statoverride

# Fix Lang
RUN sed -i 's/WINE_CMD="deepin-wine"/WINE_CMD="LC_ALL=zh_CN.UTF-8 deepin-wine"/' /opt/deepinwine/tools/run.sh


WORKDIR /opt/deepinwine/apps


RUN rm -r /_install
