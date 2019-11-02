#!/bin/sh
/usr/local/bin/tarsnap -c \
	-v \
	-f "$(uname -n)-$(date +%Y-%m-%d_%H-%M-%S)" \
	/Users/anand/Documents
