#!/bin/bash

iptables -F
modprobe -r xt_ipaddr
cd usr
make
make install
cd ../mod
make
make modules_install
depmod
iptables -A OUTPUT -m ipaddr --ipdst 172.16.0.10
