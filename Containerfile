FROM registry.suse.com/bci/bci-base:15.5
RUN zypper -n in chrony && \
    echo "server time.google.com iburst" > /etc/chrony.d/pool.conf && \
    sed -i "25iallow 192.168.11.0/24" /etc/chrony.conf

EXPOSE 123/udp

ENTRYPOINT [ "/usr/sbin/chronyd", "-d", "-s"]
