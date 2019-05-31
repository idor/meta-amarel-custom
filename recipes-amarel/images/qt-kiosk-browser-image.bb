LICENSE = "CLOSED"

inherit core-image

IMAGE_LINGUAS += " \
    en-gb \
    en-us \
    es-es \
    it-it \
    pt-br \
    zh-cn \
"

CORE_IMAGE_EXTRA_INSTALL += " \
    init-ifupdown \
    ca-certificates \
    liberation-fonts \
    qt-kiosk-browser \
    qtbase-plugins \
    qtbase-tools \
    tslib \
    tslib-calibrate \
"

IMAGE_FEATURES += " ssh-server-openssh"
