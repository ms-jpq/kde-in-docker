FROM msjpq/firefox-vnc

# Install
RUN apt update && \
    apt install -y chromium-browser
VOLUME /home/abc/Downloads


# All Dependencies Satisfied
COPY root /
ENV PAGE_TITLE=Browsers


# Cleanup
RUN apt clean
