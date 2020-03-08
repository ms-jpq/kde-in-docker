FROM msjpq/kde-vnc:bionic

RUN mkdir /_install


# Pull Deps
RUN cd /_install && \
    apt install -y git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-ubuntu.git && \
    git clone --depth=1 https://github.com/wszqkzqk/deepin-wine-containers-for-ubuntu.git


# Install Deps
RUN cd /_install/deepin-wine-ubuntu && \
    dpkg --add-architecture i386 && \
    apt update && \
    apt install -y '.*\.deb'


# Install Apps
RUN cd /_install/deepin-wine-containers-for-ubuntu && \
    apt install -y '.*\.deb'


# # Fix Lang
# RUN sed -i 's/WINE_CMD="deepin-wine"/WINE_CMD="LC_ALL=zh_CN.UTF-8 deepin-wine"/' /opt/deepinwine/tools/run.sh


ENV PAGE_TITLE=Deepin


# RUN rm -r /_install
