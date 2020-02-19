# [KID - KDE in Docker](https://ms-jpq.github.io/kde-in-docker/)

Docker + VNC + noVNC web UI

**WHY?**

**So you can run KDE inside a browser**

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

- `-v ./appconfig:/root`

## Images

---

### [Base:Ubuntu-Bionic](https://hub.docker.com/r/msjpq/kde-vnc/)

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/kde-vnc.svg)](https://hub.docker.com/r/msjpq/kde-vnc/)

KDE on 18.04 lts. `620MB`

**RUN** - `docker run -p 8080:8080 -p 5900:5900 msjpq/kde-vnc:bionic`

![bionic preview.png](https://github.com/ms-jpq/kde-in-docker/raw/master/preview/bionic.png)

---

### [Firefox](https://hub.docker.com/r/msjpq/firefox-vnc/)

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/firefox-vnc.svg)](https://hub.docker.com/r/msjpq/firefox-vnc/)

🦊

**RUN** - `docker run -p 8080:8080 -p 5900:5900 msjpq/firefox-vnc`

![firefox preview.png](https://github.com/ms-jpq/kde-in-docker/raw/master/preview/firefox.png)

---

### [Motrix](https://hub.docker.com/r/msjpq/motrix-vnc/)

[![Docker Pulls](https://img.shields.io/docker/pulls/msjpq/motrix-vnc.svg)](https://hub.docker.com/r/msjpq/motrix-vnc/)

Really cool download client. [https://motrix.app/](https://motrix.app/)

**`thunder://`** !! 迅雷

**RUN** - `docker run -p 8080:8080 -p 5900:5900 msjpq/motrix-vnc`

![motrix preview.png](https://github.com/ms-jpq/kde-in-docker/raw/master/preview/motrix.png)
