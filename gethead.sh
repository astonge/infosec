#!/usr/bin/env bash

# Get some head from webservers.
# Note: they could be lyin' bastards.

if [ "$#" -ne 11 ]; then
	echo "provide a hostname."
else
	echo -en "HEAD / HTTP/1.1\r\nHost: $1\r\nConnection: close\r\n\r\n" | netcat $1 80
fi
