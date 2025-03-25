FROM kalilinux/kali-rolling

RUN apt-get update && \
    apt-get install -y iputils-ping iproute2 net-tools curl wget nmap

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
