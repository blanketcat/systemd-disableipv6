# SystemD-DisableIPv6

Note: I have only tested this on Ubuntu 16.04

### Installation

`~$ git clone https://github.com/blanketcat/systemd-disableipv6`

`~$ cd systemd-disableipv6`

`~$ sudo mkdir /etc/disable_ipv6 && \
sudo cp etc/disable_ipv6/* /etc/disable_ipv6 && \
sudo cp etc/systemd/system/dissableipv6.service /etc/systemd/system/disableipv6.service`

`~$ sudo systemctl daemon-reload`

`~$ sudo systemctl start disableipv6.service`

Ipv6 should be disabled now and the flag will persist through system shutdown.
