#!/usr/bin/with-contenv bash

# root
echo "root:`echo $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20)`" | chpasswd


# https://github.com/linuxserver/docker-baseimage-alpine/blob/master/root/etc/cont-init.d/10-adduser
#abc
PUID=${PUID:-911}
PGID=${PGID:-911}

# create abc user
useradd -u "$PUID" -U -d /home/abc -s /bin/false abc
groupmod -o -g "$PGID" abc
echo "abc:`echo $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20)`" | chpasswd

# ensure abc user has normal default settings
cp /etc/skel/.bash_logout $HOME/
cp /etc/skel/.bashrc $HOME/
cp /etc/skel/.profile $HOME/
echo export XDG_RUNTIME_DIR="/tmp/runtime-abc" >> $HOME/.bashrc
mkdir -p "$HOME/Desktop"
mkdir -p "$HOME/.vnc"

# Needed when we run startplasma-x11 to prevent warnings
mkdir -p /tmp/runtime-abc
chmod 700 /tmp/runtime-abc
chown abc:abc /tmp/runtime-abc

echo "$VNC_PASSWORD" | vncpasswd -f >> "$HOME/.vnc/passwd"
chmod 600 "$HOME/.vnc/passwd"

echo '
-------------------------------------
GID/UID
-------------------------------------'
echo "
User uid:    $(id -u abc)
User gid:    $(id -g abc)
-------------------------------------
"