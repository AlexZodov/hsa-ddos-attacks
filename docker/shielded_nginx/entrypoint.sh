#!/bin/bash
# Apply iptables rules
iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 1/second --limit-burst 10 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

# Start Nginx (or any service)
nginx -g "daemon off;"