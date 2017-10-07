#!/usr/bin/env bash

echo -en "HEAD / HTTP/1.1\r\nHost: $1\r\nConnection: close\r\n\r\n" | netcat $1 80
