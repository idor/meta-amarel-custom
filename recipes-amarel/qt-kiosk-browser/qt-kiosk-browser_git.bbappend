FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://${PN}.initd \
    file://${PN}.conf \
"

do_install_append() {
    install -Dm 0755 ${WORKDIR}/${PN}.initd ${D}${sysconfdir}/init.d/${PN}
    install -Dm 0644 ${WORKDIR}/${PN}.conf ${D}${sysconfdir}/${PN}.conf
}

RDEPENDS_${PN} += " \
    html5-demo \
    liberation-fonts \
    source-han-sans-cn-fonts \
    source-han-sans-jp-fonts \
    source-han-sans-kr-fonts \
    source-han-sans-tw-fonts \
"
