FROM msjpq/kde-vnc:bionic


# Pull Deps
RUN mkdir /tmp/install && \
    cd /tmp/install && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-ubuntu.git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-containers-for-ubuntu.git

# Install Deps
RUN cd /tmp/install/deepin-wine-ubuntu && \
    dpkg --add-architecture i386 && \
    apt update && \
    dpkg -i *.deb || \
    apt install -f -y

# Install Apps
RUN cd /tmp/install/deepin-wine-containers-for-ubuntu && \
    dpkg -i *.deb || \
    apt install -f -y
RUN rm /var/lib/dpkg/statoverride && \
    touch /var/lib/dpkg/statoverride

# Fix Lang
RUN sed -i 's/WINE_CMD="deepin-wine"/WINE_CMD="LC_ALL=zh_CN.UTF-8 deepin-wine"/' /opt/deepinwine/tools/run.sh


WORKDIR /opt/deepinwine/apps
