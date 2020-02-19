#!/usr/bin/with-contenv sh


sed -i 's@<title>noVNC<\/title>@''<title>'"$PAGE_TITLE"'<\/title>@' /novnc/vnc.html
sed -i 's@<title>noVNC<\/title>@''<title>'"$PAGE_TITLE"'<\/title>@' /novnc/vnc_lite.html
