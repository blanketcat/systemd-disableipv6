#!/bin/bash

## Disable IPv6

disable_ipv6() {
	sudo su - root -c 'ipv6_conf_path=/proc/sys/net/ipv6/conf;
	for device in $(ls "$ipv6_conf_path")
	do
		target_flag="$ipv6_conf_path"/"$device"/disable_ipv6
		echo "1" > $target_flag
	done'
}

disable_ipv6

