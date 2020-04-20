FROM msjpq/kde-vnc:bionic

# Install
RUN apt update && \
    apt install -y firefox


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Firefox


# Cleanup
RUN apt clean
