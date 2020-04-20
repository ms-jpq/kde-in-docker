FROM msjpq/firefox-vnc

# Install
RUN apt update && \
    apt install -y chromium-browser


# All Dependencies Satisfied
COPY root /
ENV PGID=6006 \
    PUID=6006 \
    PAGE_TITLE=Browsers


# Cleanup
RUN apt clean
