#!/bin/bash

## Flush & delete previously stored chains
/usr/bin/iptables -F
/usr/bin/iptables -X

## Set policy to drop input, forward & only accept outgoing by default
/usr/bin/iptables -P INPUT DROP
/usr/bin/iptables -P FORWARD DROP
/usr/bin/iptables -P OUTPUT ACCEPT

## Allow loopback
/usr/bin/iptables -A INPUT -i lo -j ACCEPT

## Allow outgoing, established / related connections from original process
/usr/bin/iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT 

## Allow certain port by using this
# /usr/bin/iptables -A INPUT -p [TCP|UDP] --sport [port#] -j [ACCEPT|DROP|REJECT]

