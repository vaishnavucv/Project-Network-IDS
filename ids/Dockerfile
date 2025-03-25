FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y iproute2 iptables tcpdump net-tools \
    suricata wget curl iputils-ping nano iptables-persistent && \
    apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
