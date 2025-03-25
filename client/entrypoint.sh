#!/bin/bash
ip route del default
ip route add default via 172.20.0.2  # IP of IDS container
tail -f /dev/null
