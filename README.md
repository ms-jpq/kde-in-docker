# Docker GUI KDE

Docker + VNC + noVNC web UI

Relatively lightweight images of containerized apps.

## Usage

### Common Environmental Variables

#### VNC

- `-e SCR_WIDTH=1600`
- `-e SCR_HEIGHT=900`

#### noVNC UI

- `-e PATH_PREFIX=/`
- `-e VNC_RESIZE=scale|off`
- `-e RECON_DELAY=250` reconnection delay (ms)
- `-e PAGE_TITLE=🐳`

#### Misc

- `-e ROOT_PASSWORD=password`

### Common Ports

- `-p 80:8080` noVNC web UI

- `-p 5900:5900` VNC

### Common Volumes

`-v ./appconfig:/root`

## Images

### Base:Ubuntu-Bionic

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/kde-vnc.svg)](https://hub.docker.com/r/msjpq/kde-vnc/)

![bionic preview.png](https://github.com/ms-jpq/docker-gui-kde/raw/master/preview/bionic.png)

### Motrix

#### Description

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/motrix-vnc.svg)](https://hub.docker.com/r/msjpq/motrix-vnc/)

![motrix preview.png](https://github.com/ms-jpq/docker-gui-kde/raw/master/preview/motrix.png)

### Firefox

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/firefox-vnc.svg)](https://hub.docker.com/r/msjpq/firefox-vnc/)

![firefox preview.png](https://github.com/ms-jpq/docker-gui-kde/raw/master/preview/firefox.png)
