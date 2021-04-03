FROM ubuntu:20.04

# Install strongswan and iptables
RUN apt-get install -y strongswan && \
    apt-get clean


# Internally uses port 500/udp and 4500/udp
EXPOSE 500/udp
EXPOSE 4500/udp

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
