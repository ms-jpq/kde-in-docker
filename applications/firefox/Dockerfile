FROM msjpq/kde-vnc:bionic

# Install
RUN apt update && \
    apt install -y firefox
VOLUME /config/Downloads


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Firefox


# Cleanup
RUN apt clean
