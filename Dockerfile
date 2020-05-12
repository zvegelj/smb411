
RUN dnf -y install samba \
    samba-common samba-common-libs samba-common-tools \
    samba-client samba-client-libs \
    samba-winbind samba-winbind-clients samba-winbind-modules
##    && rm -rf /var/cache/dnf/*

VOLUME ["/etc", "/var/cache/samba", "/var/lib/samba", "/var/log/samba",\
        "/run/samba"]

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []

