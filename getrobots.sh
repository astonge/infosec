#!/usr/bin/env bash


if [ "$#" -ne 1 ]; then
 	echo "provide a hostname."
else
	echo -en "GET /robots.txt HTTP/1.1\r\nHost: $1\r\nConnection: close\r\n\r\n" | netcat $1 80
fi
