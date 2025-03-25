#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# Start TCPDUMP and Suricata
mkdir -p /var/log/suricata

tcpdump -i eth0 -w /var/log/traffic.pcap &
#suricata -c /etc/suricata/suricata.yaml -i eth0 &

# Keep container alive
tail -f /dev/null
