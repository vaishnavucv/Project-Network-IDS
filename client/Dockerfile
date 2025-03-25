FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y iputils-ping net-tools iproute2 git wget curl nano

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
