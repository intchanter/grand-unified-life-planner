#!/usr/bin/python
import sys

data = open('/var/www/html/WIP/test.json', 'w')
for line in sys.stdin.readline():
	data.write(line)
print "Content-type: text/html\n\n"

