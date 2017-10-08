#!/usr/bin/env python

hexstr = "24346c6d6f73745f7468337245"
asciistr = ""

for i in range(0, len(hexstr) - 1,2):
    dec = int(hexstr[i:i+2],16)
    asciistr += chr(dec)

print asciistr
