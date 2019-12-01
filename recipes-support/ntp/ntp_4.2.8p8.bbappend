# Replace file /etc/ntp.conf

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
     file://ntp.conf \
     file://hw_clock \
 "

do_install_append() {
    install -m 644 ${WORKDIR}/ntp.conf ${D}${sysconfdir}
    install -d ${D}${sysconfdir}/cron.d
    install -m 644 ${WORKDIR}/hw_clock ${D}${sysconfdir}/cron.d

}

FILES_${PN} += " ${sysconfdir}/cron.d/hw_clock "

